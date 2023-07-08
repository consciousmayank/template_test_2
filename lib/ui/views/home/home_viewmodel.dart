import 'package:flutter/material.dart';
import 'package:template/app/app.bottomsheets.dart';
import 'package:template/app/app.dialogs.dart';
import 'package:template/app/app.locator.dart';
import 'package:template/app/app.router.dart';
import 'package:template/app/app_baseview_model.dart';
import 'package:template/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template/ui/widgets/dumb/theme_popup_menu.dart';

class HomeViewModel extends BaseViewModel with AppBaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  
  void takeToChangeThemeView() {
    navigationService.navigateToThemeChangeView();
  }

  void takeToLanguageChangeView() =>
      navigationService.navigateToLanguageChangeView();
}
