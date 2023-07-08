import 'package:stacked_services/stacked_services.dart';
import 'package:template/services/app_preference_service.dart';

import 'app.locator.dart';

mixin AppBaseViewModel {
  DialogService dialogService = locator<DialogService>();
  NavigationService navigationService = locator<NavigationService>();
  SnackbarService snackBarService = locator<SnackbarService>();
  InterFaceAppPreferences preferencesService = locator<AppPreferenceService>();
  BottomSheetService bottomSheetService = locator<BottomSheetService>();
}
