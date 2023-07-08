import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template/enum/internet_connectivity.dart';
import 'package:template/services/app_theme_service.dart';

import '../../../app/app.locator.dart';
import '../../../app/app_baseview_model.dart';
import '../../../enum/snackbar_types.dart';

class AppThemeViewModel extends ReactiveViewModel with AppBaseViewModel {
  final AppThemeService _themeService = locator<AppThemeService>();
  // final AppPreferenceService _appPreferencesService =
  //     locator<AppPreferenceService>();
  InternetConnectivity currentConnectivity = InternetConnectivity.active;

  @override
  List<ListenableServiceMixin> get listenableServices => [
        _themeService,
      ];

  ThemeData getTheme() => _themeService.themeData;
  Locale getLocale() => _themeService.appLocale;

  getColorOptions() => _themeService.colorOptions;

  void handleBrightnessChange() {
    _themeService.handleBrightnessChange();
    notifyListeners();
  }

  void handleColorSelect(int value) {
    _themeService.handleColorSelect(value);
    notifyListeners();
  }

  //This method will show the connectivity change snackBar and also start sending offlineApis if device resumes internet.
  void connectivityUpdated({
    required ConnectivityResult? connectivityResult,
    required String inActiveInternetConnectionText,
    required String activeInternetConnectionText,
    required String dataSyncStartText,
  }) async {
    if (connectivityResult != null &&
        connectivityResult != ConnectivityResult.none) {
      var result = await InternetAddress.lookup('google.com');

      InternetConnectivity cType =
          (result.isNotEmpty && result[0].rawAddress.isNotEmpty)
              ? InternetConnectivity.active
              : InternetConnectivity.inactive;

      if (currentConnectivity != cType) {
        snackBarService.showCustomSnackBar(
          message: (result.isNotEmpty && result[0].rawAddress.isNotEmpty)
              ? activeInternetConnectionText
              : inActiveInternetConnectionText,
          variant: SnackbarType.deviceConnectivity,
          duration: const Duration(seconds: 2),
        );
        currentConnectivity = cType;
      }
    } else {
      if (currentConnectivity != InternetConnectivity.inactive) {
        snackBarService.showCustomSnackBar(
          message: inActiveInternetConnectionText,
          variant: SnackbarType.deviceConnectivity,
          duration: const Duration(seconds: 4),
        );
        currentConnectivity = InternetConnectivity.inactive;
      }
    }
  }
}
