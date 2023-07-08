import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template/services/app_connectivity_listener_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../l10n/l10n.dart';
import 'app_theme_viewmodel.dart';

class AppThemeView extends StackedView<AppThemeViewModel> {
  const AppThemeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppThemeViewModel viewModel,
    Widget? child,
  ) {
    return MaterialApp(
      builder: (context, child) {
        return StreamBuilder<ConnectivityResult>(
            stream: locator<AppConnectivityListenerService>()
                .flutterNetworkConnectivity
                .onConnectivityChanged,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                viewModel.connectivityUpdated(
                    connectivityResult: snapshot.data,
                    inActiveInternetConnectionText: AppLocalizations.of(context)
                        .inActiveInternetConnectionText,
                    activeInternetConnectionText: AppLocalizations.of(context)
                        .activeInternetConnectionText,
                    dataSyncStartText:
                        AppLocalizations.of(context).dataSyncText);
              }
              return child!;
            });
      },
      debugShowCheckedModeBanner: false,
      title: 'app_template',
      theme: viewModel.getTheme().copyWith(
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.black,
                  displayColor: Colors.black12,
                ),
          ),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      supportedLocales: L10n.all,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (locale.languageCode == deviceLocale!.languageCode &&
              locale.countryCode == deviceLocale.countryCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      locale: viewModel.getLocale(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
    );
  }

  @override
  AppThemeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppThemeViewModel();
}
