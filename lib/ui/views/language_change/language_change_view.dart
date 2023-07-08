import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/l10n/l10n.dart';
import '../../common/app_constants.dart';
import 'language_change_viewmodel.dart';

class LanguageChangeView extends StackedView<LanguageChangeViewModel> {
  const LanguageChangeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LanguageChangeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).languageScreenTitle,
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                color: textColor(context),
              ),
        ),
      ),
      body: SafeArea(
        bottom: true,
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                viewModel.setSelectedAppLocale(index: index);
              },
              title: Text(
                getLanguageName(index, context),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: textColor(context)),
              ),
              selected: viewModel.isLanguageSelected(index: index),
              trailing: viewModel.isLanguageSelected(index: index)
                  ? const Icon(Icons.done)
                  : null,
            ),
            separatorBuilder: (context, index) => const Divider(
              height: 3,
              color: Colors.grey,
            ),
            itemCount: L10n.all.length,
          ),
        ),
      ),
    );
  }

  @override
  LanguageChangeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LanguageChangeViewModel();

  String getLanguageName(int index, BuildContext context) {
    switch (index) {
      case 0:
        return AppLocalizations.of(context).languageEnglish;

      case 1:
        return AppLocalizations.of(context).languageHindi;

      default:
        return AppLocalizations.of(context).languageEnglish;
    }
  }
}
