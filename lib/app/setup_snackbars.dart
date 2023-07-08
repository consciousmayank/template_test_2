import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:template/ui/common/app_constants.dart';

import '../enum/snackbar_types.dart';
import '../ui/common/app_colors.dart';
import 'app.locator.dart';

void setupSnackbarUi() {
  final service = locator<SnackbarService>();

  SnackbarConfig config = SnackbarConfig(
    messageTextAlign: TextAlign.center,
    titleTextAlign: TextAlign.center,
    snackPosition: SnackPosition.BOTTOM,
    isDismissible: true,
    padding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 10,
    ),
    snackStyle: SnackStyle.GROUNDED,
    margin: kIsWeb
        ? const EdgeInsets.only(
            bottom: 30,
          )
        : const EdgeInsets.all(0),
    maxWidth: kIsWeb ? 500 : double.infinity,
    boxShadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.4),
        blurRadius: 100,
        offset: const Offset(0, 10),
      ),
    ],
    overlayBlur: 0.6,
    animationDuration: const Duration(milliseconds: 200),
    // dismissDirection: SnackDismissDirection.VERTICAL,
  );

  SnackbarConfig errorConfig = SnackbarConfig(
    messageTextAlign: TextAlign.center,
    titleTextAlign: TextAlign.center,
    snackPosition: SnackPosition.BOTTOM,
    isDismissible: false,
    titleColor: Colors.black,
    messageColor: Colors.black,
    padding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 10,
    ),
    margin: kIsWeb
        ? const EdgeInsets.only(
            bottom: 30,
          )
        : const EdgeInsets.all(0),
    boxShadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.4),
        blurRadius: 100,
        offset: const Offset(0, 10),
      ),
    ],
    backgroundColor: errorSnackbarBackgroundColor,
    overlayBlur: 0.6,
    maxWidth: kIsWeb ? 500 : double.infinity,
    snackStyle: SnackStyle.GROUNDED,
    animationDuration: const Duration(milliseconds: 200),
  );

  SnackbarConfig connectivitySnackbarConfig = SnackbarConfig(
    messageTextAlign: TextAlign.center,
    titleTextAlign: TextAlign.center,
    titleTextStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    snackPosition: SnackPosition.BOTTOM,
    isDismissible: true,
    titleColor: Colors.white,
    messageColor: Colors.white,
    backgroundColor: connectivitySnackbarBackgroundColor,
    overlayBlur: 0.6,
    maxWidth: double.infinity,
    snackStyle: SnackStyle.GROUNDED,
    animationDuration: const Duration(milliseconds: 200),
  );

  service.registerCustomSnackbarConfig(
      variant: SnackbarType.deviceConnectivity,
      config: connectivitySnackbarConfig);
  service.registerCustomSnackbarConfig(
    variant: SnackbarType.error,
    config: errorConfig
      ..backgroundColor = errorSnackbarBackgroundColor
      ..titleColor = errorSnackbarTitleColor
      ..messageColor = errorSnackbarMessageColor
      ..mainButtonTextColor = errorSnackbarButtonTextColor
      ..mainButtonStyle = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          errorSnackbarButtonBackgroundColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultBorder),
          ),
        ),
      )
      ..padding = const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.normal,
    config: config
      ..backgroundColor = normalSnackbarBackgroundColor
      ..textColor = Colors.black
      ..mainButtonTextColor = normalSnackbarTitleColor
      ..mainButtonStyle = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          normalSnackbarButtonBackgroundColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultBorder),
          ),
        ),
      )
      ..padding = const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
  );
}
