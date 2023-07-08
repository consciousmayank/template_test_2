import 'package:flutter/material.dart';
import 'package:template/app/app.bottomsheets.dart';
import 'package:template/app/app.dialogs.dart';
import 'package:template/app/app.locator.dart';
import 'package:template/app/setup_snackbars.dart';
import 'package:template/ui/views/app_theme/app_theme_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  setupSnackbarUi();
  runApp(const AppThemeView());
}
