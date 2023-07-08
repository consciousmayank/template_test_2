import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:template/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template/services/app_theme_service.dart';
import 'package:template/services/app_preference_service.dart';
import 'package:template/services/app_connectivity_listener_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<AppThemeService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<AppPreferenceService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<AppConnectivityListenerService>(
      onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterAppThemeService();
  getAndRegisterAppPreferenceService();
  getAndRegisterAppConnectivityListenerService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockAppThemeService getAndRegisterAppThemeService() {
  _removeRegistrationIfExists<AppThemeService>();
  final service = MockAppThemeService();
  locator.registerSingleton<AppThemeService>(service);
  return service;
}

MockAppPreferenceService getAndRegisterAppPreferenceService() {
  _removeRegistrationIfExists<AppPreferenceService>();
  final service = MockAppPreferenceService();
  locator.registerSingleton<AppPreferenceService>(service);
  return service;
}

MockAppConnectivityListenerService
    getAndRegisterAppConnectivityListenerService() {
  _removeRegistrationIfExists<AppConnectivityListenerService>();
  final service = MockAppConnectivityListenerService();
  locator.registerSingleton<AppConnectivityListenerService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
