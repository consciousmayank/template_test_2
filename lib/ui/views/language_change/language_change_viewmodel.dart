import 'package:stacked/stacked.dart';
import 'package:template/l10n/l10n.dart';

import '../../../app/app.locator.dart';
import '../../../app/app_baseview_model.dart';
import '../../../services/app_theme_service.dart';

class LanguageChangeViewModel extends ReactiveViewModel with AppBaseViewModel {
  final AppThemeService _themeService = locator<AppThemeService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [
        _themeService,
      ];

  bool isLanguageSelected({required int index}) {
    if (L10n.all.elementAt(index) == _themeService.appLocale) {
      return true;
    } else {
      return false;
    }
  }

  void setSelectedAppLocale({required int index}) {
    _themeService.changeAppLocale(appLocale: L10n.all.elementAt(index));
  }
}
