import 'package:flutter/material.dart';

abstract class Styles {
  static const primaryColor = Color(0xFF0C2638);
  static const secondaryColor = Color(0xFF184669);
  static const lightGray = Color(0xFFEFEFEF);
  static const dialogTitle = TextStyle(fontSize: 18);
}

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.indigo,
  brightness: Brightness.light,
  fontFamily: 'Raleway',
  scaffoldBackgroundColor: Colors.white,
  hoverColor: Styles.primaryColor.withAlpha(20),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Styles.primaryColor,
    onPrimary: Colors.white,
    secondary: Styles.primaryColor.withAlpha(200),
    onSecondary: Styles.primaryColor,
    error: Styles.primaryColor,
    onError: Styles.primaryColor,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    tertiary: Colors.white,
    onTertiary: Colors.black,
  ),
  iconTheme: const IconThemeData(
    color: Styles.primaryColor,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Styles.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    surfaceTintColor: Colors.white,
  ),
  listTileTheme: ListTileThemeData(
    dense: true,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 0,
      horizontal: 12,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  navigationRailTheme: const NavigationRailThemeData(
    selectedIconTheme: IconThemeData(color: Colors.white),
    unselectedIconTheme: IconThemeData(
      color: Styles.primaryColor,
    ),
  ),
  drawerTheme: DrawerThemeData(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      )),
);

final mainTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Raleway',
    hoverColor: Styles.primaryColor.withAlpha(20),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Styles.primaryColor,
      onPrimary: Colors.black,
      secondary: Styles.primaryColor.withAlpha(400),
      onSecondary: Styles.primaryColor,
      error: Styles.primaryColor,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.white,
      surface: Colors.black38,
      onSurface: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Styles.primaryColor,
    ),
    cardTheme: const CardTheme(
      elevation: 5,
    ),
    // pageTransitionsTheme: const PageTransitionsTheme(
    //   builders: {
    //     TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    //     TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
    //   },
    // ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      errorStyle: const TextStyle(
        fontSize: 10,
        color: Colors.red,
        leadingDistribution: TextLeadingDistribution.proportional,
      ),
      // outlineBorder: BorderSide(style: BorderStyle.none),
      border: const OutlineInputBorder(
        // borderSide: BorderSide(style: BorderStyle.none),
      ),
      // focusedBorder: OutlineInputBorder(
      //   // borderSide: BorderSide(style: BorderStyle.none),
      // ),
      enabledBorder: const OutlineInputBorder(
        // borderSide: BorderSide(style: BorderStyle.none),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      errorMaxLines: null,

      filled: true,
      fillColor: Colors.grey[100],
      activeIndicatorBorder: const BorderSide(style: BorderStyle.none),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(style: BorderStyle.none),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(style: BorderStyle.none),
      ),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    listTileTheme: ListTileThemeData(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    navigationRailTheme: const NavigationRailThemeData(
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(
        color: Styles.primaryColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
    )
  // floatingActionButtonTheme: FloatingActionButtonThemeData(
  //   backgroundColor: Colors.white,
  // )
);
