import 'package:flutter/material.dart';

const Color colorBlue = Colors.blue;
const Color colorGreen = Colors.green;
const Color colorRed = Colors.red;
const Color colorYellow = Colors.yellow;
const Color colorPink = Colors.pink;
const Color colorGrey = Colors.grey;
const Color colorBrown = Colors.brown;
const Color unselectedTabLabelColor = Colors.white;

double get defaultBorder => 5;
get defaultBorderRadius => BorderRadius.circular(defaultBorder);

Color textColor(BuildContext context) => Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black;

AppBarTheme appBarTheme({Color textColor = Colors.black,}) => AppBarTheme(
      titleTextStyle: appTextTheme().headlineSmall,
    );

ListTileThemeData listTileTheme({Color textColor = Colors.black,}) => ListTileThemeData(
      titleTextStyle: appTextTheme().headlineSmall,
      subtitleTextStyle: appTextTheme().titleMedium,
    );

TextTheme appTextTheme({Color textColor = Colors.black,}) => const TextTheme(
      displayLarge: TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w300,
      ),
      displayMedium: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
