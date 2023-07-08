import 'package:template/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:template/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:template/ui/views/home/home_view.dart';
import 'package:template/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template/ui/views/app_theme/app_theme_view.dart';
import 'package:template/services/app_theme_service.dart';
import 'package:template/services/app_preference_service.dart';
import 'package:template/services/app_connectivity_listener_service.dart';
import 'package:template/ui/views/theme_change/theme_change_view.dart';
import 'package:template/ui/views/language_change/language_change_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: AppThemeView),
    MaterialRoute(page: ThemeChangeView),
    MaterialRoute(page: LanguageChangeView),
// @stacked-route
  ],
  logger: StackedLogger(),
  dependencies: [
    InitializableSingleton(
      classType: AppPreferenceService,
    ),
    LazySingleton(classType: AppThemeService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: AppConnectivityListenerService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
