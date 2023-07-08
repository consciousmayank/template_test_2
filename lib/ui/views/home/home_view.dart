import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template/ui/widgets/dumb/theme_popup_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../common/app_constants.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context).homeScreenTitle,
              style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                    color: textColor(context),
                  ),
            ),
            actions: [ThemePopUpMenuWidget(options: getMenuOptions(viewModel: viewModel, context: context))],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(),
          ),
        ),
      ),
    );
  }

  List<PopUpMenuOptions> getMenuOptions({required HomeViewModel viewModel, required BuildContext context  ,}) {
    List<PopUpMenuOptions> menuOptions = [];

    menuOptions.add(
      PopUpMenuOptions(
        menuValue: 0,
        // menuIcon: const Icon(Icons.settings),
        onMenuItemSelected: () {
          viewModel.takeToChangeThemeView();
        },
        menuTitle: AppLocalizations.of(context).changeThemeText,
      ),
    );

    menuOptions.add(
      PopUpMenuOptions(
        menuValue: 1,
        // menuIcon: const Icon(Icons.abc),
        onMenuItemSelected: () {
          viewModel.takeToLanguageChangeView();
        },
        menuTitle: AppLocalizations.of(context).changeLanguageText,
      ),
    );

    return menuOptions;
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
