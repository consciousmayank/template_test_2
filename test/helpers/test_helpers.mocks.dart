// Mocks generated by Mockito 5.4.2 from annotations
// in template/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i3;

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:flutter/material.dart' as _i2;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i6;
import 'package:template/services/app_connectivity_listener_service.dart'
    as _i10;
import 'package:template/services/app_preference_service.dart' as _i9;
import 'package:template/services/app_theme_service.dart' as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeThemeData_0 extends _i1.SmartFake implements _i2.ThemeData {
  _FakeThemeData_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({_i2.DiagnosticLevel? minLevel = _i2.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeLocale_1 extends _i1.SmartFake implements _i3.Locale {
  _FakeLocale_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBox_2<E> extends _i1.SmartFake implements _i4.Box<E> {
  _FakeBox_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeConnectivity_3 extends _i1.SmartFake implements _i5.Connectivity {
  _FakeConnectivity_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i6.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i2.GlobalKey<_i2.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i2.GlobalKey<_i2.NavigatorState>?);
  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i6.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<T?>? navigateWithTransition<T>(
    _i2.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i2.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? replaceWithTransition<T>(
    _i2.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i2.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void popUntil(
    _i2.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i2.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? navigateToView<T>(
    _i2.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i2.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i6.Transition? transition,
    _i6.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i2.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? clearStackAndShowView<T>(
    _i2.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? clearTillFirstAndShowView<T>(
    _i2.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
  @override
  _i7.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i2.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i6.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i6.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<_i6.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i7.Future<_i6.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i7.Future<_i6.SheetResponse<dynamic>?>.value(),
      ) as _i7.Future<_i6.SheetResponse<dynamic>?>);
  @override
  _i7.Future<_i6.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i3.Color? barrierColor = const _i3.Color(2315255808),
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i7.Future<_i6.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i7.Future<_i6.SheetResponse<T>?>.value(),
      ) as _i7.Future<_i6.SheetResponse<T>?>);
  @override
  void completeSheet(_i6.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i6.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i6.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i2.Widget Function(
      _i2.BuildContext,
      _i6.DialogRequest<dynamic>,
      dynamic Function(_i6.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<_i6.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i3.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i3.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i7.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i7.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i7.Future<_i6.DialogResponse<dynamic>?>);
  @override
  _i7.Future<_i6.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i3.Color? barrierColor = const _i3.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i7.Future<_i6.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i7.Future<_i6.DialogResponse<T>?>.value(),
      ) as _i7.Future<_i6.DialogResponse<T>?>);
  @override
  _i7.Future<_i6.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i3.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i3.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i7.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i7.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i7.Future<_i6.DialogResponse<dynamic>?>);
  @override
  void completeDialog(_i6.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [AppThemeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppThemeService extends _i1.Mock implements _i8.AppThemeService {
  @override
  int get colorSelected => (super.noSuchMethod(
        Invocation.getter(#colorSelected),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i2.ThemeData get themeData => (super.noSuchMethod(
        Invocation.getter(#themeData),
        returnValue: _FakeThemeData_0(
          this,
          Invocation.getter(#themeData),
        ),
        returnValueForMissingStub: _FakeThemeData_0(
          this,
          Invocation.getter(#themeData),
        ),
      ) as _i2.ThemeData);
  @override
  _i3.Locale get appLocale => (super.noSuchMethod(
        Invocation.getter(#appLocale),
        returnValue: _FakeLocale_1(
          this,
          Invocation.getter(#appLocale),
        ),
        returnValueForMissingStub: _FakeLocale_1(
          this,
          Invocation.getter(#appLocale),
        ),
      ) as _i3.Locale);
  @override
  List<_i8.ThemeColorOptions> get colorOptions => (super.noSuchMethod(
        Invocation.getter(#colorOptions),
        returnValue: <_i8.ThemeColorOptions>[],
        returnValueForMissingStub: <_i8.ThemeColorOptions>[],
      ) as List<_i8.ThemeColorOptions>);
  @override
  int get listenersCount => (super.noSuchMethod(
        Invocation.getter(#listenersCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i2.ThemeData updateThemes(
    int? colorIndex,
    bool? useMaterial3,
    bool? useLightMode,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateThemes,
          [
            colorIndex,
            useMaterial3,
            useLightMode,
          ],
        ),
        returnValue: _FakeThemeData_0(
          this,
          Invocation.method(
            #updateThemes,
            [
              colorIndex,
              useMaterial3,
              useLightMode,
            ],
          ),
        ),
        returnValueForMissingStub: _FakeThemeData_0(
          this,
          Invocation.method(
            #updateThemes,
            [
              colorIndex,
              useMaterial3,
              useLightMode,
            ],
          ),
        ),
      ) as _i2.ThemeData);
  @override
  void handleBrightnessChange() => super.noSuchMethod(
        Invocation.method(
          #handleBrightnessChange,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void handleColorSelect(int? value) => super.noSuchMethod(
        Invocation.method(
          #handleColorSelect,
          [value],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void handleDarkModeSelect(bool? value) => super.noSuchMethod(
        Invocation.method(
          #handleDarkModeSelect,
          [value],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void handleMaterial3Select(bool? value) => super.noSuchMethod(
        Invocation.method(
          #handleMaterial3Select,
          [value],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Locale getLocaleFromPref() => (super.noSuchMethod(
        Invocation.method(
          #getLocaleFromPref,
          [],
        ),
        returnValue: _FakeLocale_1(
          this,
          Invocation.method(
            #getLocaleFromPref,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeLocale_1(
          this,
          Invocation.method(
            #getLocaleFromPref,
            [],
          ),
        ),
      ) as _i3.Locale);
  @override
  void _setLocaleInPref({required _i3.Locale? appLocale}) => super.noSuchMethod(
        Invocation.method(
          #setLocaleInPref,
          [],
          {#appLocale: appLocale},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void changeAppLocale({required _i3.Locale? appLocale}) => super.noSuchMethod(
        Invocation.method(
          #changeAppLocale,
          [],
          {#appLocale: appLocale},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
        Invocation.method(
          #listenToReactiveValues,
          [reactiveValues],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [AppPreferenceService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppPreferenceService extends _i1.Mock
    implements _i9.AppPreferenceService {
  @override
  List<int> get key => (super.noSuchMethod(
        Invocation.getter(#key),
        returnValue: <int>[],
        returnValueForMissingStub: <int>[],
      ) as List<int>);
  @override
  set key(List<int>? _key) => super.noSuchMethod(
        Invocation.setter(
          #key,
          _key,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Box<dynamic> get appHelperBox => (super.noSuchMethod(
        Invocation.getter(#appHelperBox),
        returnValue: _FakeBox_2<dynamic>(
          this,
          Invocation.getter(#appHelperBox),
        ),
        returnValueForMissingStub: _FakeBox_2<dynamic>(
          this,
          Invocation.getter(#appHelperBox),
        ),
      ) as _i4.Box<dynamic>);
  @override
  set appHelperBox(_i4.Box<dynamic>? _appHelperBox) => super.noSuchMethod(
        Invocation.setter(
          #appHelperBox,
          _appHelperBox,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Locale getAppLanguageLocale() => (super.noSuchMethod(
        Invocation.method(
          #getAppLanguageLocale,
          [],
        ),
        returnValue: _FakeLocale_1(
          this,
          Invocation.method(
            #getAppLanguageLocale,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeLocale_1(
          this,
          Invocation.method(
            #getAppLanguageLocale,
            [],
          ),
        ),
      ) as _i3.Locale);
  @override
  void setAppLanguageLocale({required _i3.Locale? locale}) =>
      super.noSuchMethod(
        Invocation.method(
          #setAppLanguageLocale,
          [],
          {#locale: locale},
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [AppConnectivityListenerService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppConnectivityListenerService extends _i1.Mock
    implements _i10.AppConnectivityListenerService {
  @override
  _i5.Connectivity get flutterNetworkConnectivity => (super.noSuchMethod(
        Invocation.getter(#flutterNetworkConnectivity),
        returnValue: _FakeConnectivity_3(
          this,
          Invocation.getter(#flutterNetworkConnectivity),
        ),
        returnValueForMissingStub: _FakeConnectivity_3(
          this,
          Invocation.getter(#flutterNetworkConnectivity),
        ),
      ) as _i5.Connectivity);
  @override
  _i7.Future<bool> isDeviceOnline() => (super.noSuchMethod(
        Invocation.method(
          #isDeviceOnline,
          [],
        ),
        returnValue: _i7.Future<bool>.value(false),
        returnValueForMissingStub: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
  @override
  _i7.Future<bool> checkInternetConnectivity() => (super.noSuchMethod(
        Invocation.method(
          #checkInternetConnectivity,
          [],
        ),
        returnValue: _i7.Future<bool>.value(false),
        returnValueForMissingStub: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
}
