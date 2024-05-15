import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeColors {
  static const Color clrBlack = Colors.black;
  static const Color clrBlack50 = Color(0xFF151513);
  static const Color clrBlack100 = Color(0xFF0B1110);
  static const Color clrBlack700 = Color(0x99000000);
  static const Color clrAccentBlack = Color(0xFF2291D6);
  static const Color accentColor = Color(0xFF2291D6);
  static const Color accentDisableColor = Color(0x552291D6);
  static const Color clrWhite = Color(0xFFffffff);
  static const Color clrGrey = Color(0xFF707070);
  static const Color clrTransparent = Color(0x00ffffff);
  static const Color clrDisable = Color(0xFFE9E9ED);
  static const Color clrScaffoldBackground = Color(0xFF343640);
  static const Color clrText = Color(0xFFDDDDDD);
  static const Color clrText2 = Color(0xFFB2B2B2);
  static const Color clrBg = Color(0xFF000000);
  static const Color clrArrow = Color(0xFFCCCCCC);
  static const Color clrItem = Color(0xFF2F3132);
  static const Color clrItemGreen = Color(0xFF17B780);
  static const Color clrItemYellow = Color(0xFFE0960B);
  static const Color clrDivider = Color(0xFF707070);
}

class ThemeFonts {
  static const String helvetica = 'helvetica';
  static const String brandonGrotesque = 'brandon_grotesque';
}

class AppTheme {
  AppBarTheme appBarTheme() => const AppBarTheme(
        backgroundColor: ThemeColors.clrWhite,
        foregroundColor: ThemeColors.clrBlack,
        titleTextStyle: TextStyle(color: ThemeColors.clrBlack),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ThemeColors.clrTransparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: ThemeColors.clrWhite,
        ),
      );

  static TextTheme textTheme(BuildContext context) {
    final currentTextTheme = Theme.of(context).textTheme;
    const defaultTextColor = ThemeColors.clrWhite;
    const poppins = ThemeFonts.helvetica;
    return TextTheme(
      // Default values
      // fontSize: 96.0,
      // fontWeight: FontWeight.w300
      displayLarge: currentTextTheme.displayLarge!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 60.0,
      // fontWeight: FontWeight.w300
      displayMedium: currentTextTheme.displayMedium!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 48.0,
      // fontWeight: FontWeight.w400
      displaySmall: currentTextTheme.displaySmall!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 34.0,
      // fontWeight: FontWeight.w400
      headlineMedium: currentTextTheme.headlineMedium!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 24.0,
      // fontWeight: FontWeight.w400
      headlineSmall: currentTextTheme.headlineSmall!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 20.0,
      // fontWeight: FontWeight.w500
      titleLarge: currentTextTheme.titleLarge!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      labelMedium: currentTextTheme.titleLarge!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 16.0,
      // fontWeight: FontWeight.w400
      bodyLarge: currentTextTheme.bodyLarge!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 14.0,
      // fontWeight: FontWeight.w400
      bodyMedium: currentTextTheme.bodyMedium!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 16.0,
      // fontWeight: FontWeight.w400
      titleMedium: currentTextTheme.titleMedium!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 14.0,
      // fontWeight: FontWeight.w500
      titleSmall: currentTextTheme.titleSmall!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 14.0,
      // fontWeight: FontWeight.w500
      labelLarge: currentTextTheme.labelLarge!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 12.0,
      // fontWeight: FontWeight.w400
      bodySmall: currentTextTheme.bodySmall!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),

      // Default values
      // fontSize: 10.0,
      // fontWeight: FontWeight.w400
      labelSmall: currentTextTheme.labelSmall!.copyWith(
        color: defaultTextColor,
        fontFamily: poppins,
      ),
    );
  }

  /// Theme data for Material and Elevated button
  static ElevatedButtonThemeData elevatedButtonThemeData() =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: ThemeColors.clrWhite,
          backgroundColor: ThemeColors.accentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: ThemeColors.clrWhite,
          ),
        ),
      );

  /// Theme data for Text button
  static TextButtonThemeData textButtonThemeData() => TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: ThemeColors.accentColor),
      );

  /// Theme data for Floating Action Button
  static FloatingActionButtonThemeData floatingActionButtonThemeData(
    BuildContext context,
  ) =>
      Theme.of(context)
          .floatingActionButtonTheme
          .copyWith(backgroundColor: ThemeColors.accentColor);

  /// Theme data for Floating Action Button
  static OutlinedButtonThemeData outlinedButtonThemeData() =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ThemeColors.accentColor,
          side: const BorderSide(color: ThemeColors.accentColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
}

class AppThemeDark {
  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      backgroundColor: ThemeColors.clrBlack,
      foregroundColor: ThemeColors.clrWhite,
      titleTextStyle: TextStyle(color: ThemeColors.clrWhite),
    );
  }

  static TextTheme textThemeDark(BuildContext context) {
    final currentTextTheme = Theme.of(context).textTheme;
    const defaultTextColor = ThemeColors.clrWhite;
    return TextTheme(
      // Default values
      // fontSize: 96.0,
      // fontWeight: FontWeight.w300
      displayLarge: currentTextTheme.displayLarge!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.displayLarge!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 60.0,
      // fontWeight: FontWeight.w300
      displayMedium: currentTextTheme.displayMedium!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.displayMedium!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 48.0,
      // fontWeight: FontWeight.w400
      displaySmall: currentTextTheme.displaySmall!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.displaySmall!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 34.0,
      // fontWeight: FontWeight.w400
      headlineMedium: currentTextTheme.headlineMedium!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.headlineMedium!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 24.0,
      // fontWeight: FontWeight.w400
      headlineSmall: currentTextTheme.headlineSmall!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.headlineSmall!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 20.0,
      // fontWeight: FontWeight.w500
      titleLarge: currentTextTheme.titleLarge!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.titleLarge!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 16.0,
      // fontWeight: FontWeight.w400
      bodyLarge: currentTextTheme.bodyLarge!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.bodyLarge!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 14.0,
      // fontWeight: FontWeight.w400
      bodyMedium: currentTextTheme.bodyMedium!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.bodyMedium!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 16.0,
      // fontWeight: FontWeight.w400
      titleMedium: currentTextTheme.titleMedium!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.titleMedium!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 14.0,
      // fontWeight: FontWeight.w500
      titleSmall: currentTextTheme.titleSmall!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.titleSmall!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 14.0,
      // fontWeight: FontWeight.w500
      labelLarge: currentTextTheme.labelLarge!.copyWith(
        fontSize: currentTextTheme.labelLarge!.fontSize! + 2.0,
        fontWeight: FontWeight.bold,
      ),

      // Default values
      // fontSize: 12.0,
      // fontWeight: FontWeight.w400
      bodySmall: currentTextTheme.bodySmall!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.bodySmall!.fontSize! + 2.0,
      ),

      // Default values
      // fontSize: 10.0,
      // fontWeight: FontWeight.w400
      labelSmall: currentTextTheme.labelSmall!.copyWith(
        color: defaultTextColor,
        fontSize: currentTextTheme.labelSmall!.fontSize! + 2.0,
      ),
    );
  }

  /// Default theme data for Material and Elevated button
  static ButtonThemeData buttonThemeData(BuildContext context) =>
      Theme.of(context).buttonTheme.copyWith(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            buttonColor: ThemeColors.accentColor,
            textTheme: ButtonTextTheme.primary,
            colorScheme:
                const ColorScheme.light(primary: ThemeColors.accentColor),
            disabledColor: ThemeColors.clrGrey,
          );

  /// Theme data for Material and Elevated button
  static ElevatedButtonThemeData elevatedButtonThemeData() =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: ThemeColors.clrWhite,
          backgroundColor: ThemeColors.accentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );

  /// Theme data for Text button
  static TextButtonThemeData textButtonThemeData() => TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: ThemeColors.accentColor),
      );

  /// Theme data for Floating Action Button
  static FloatingActionButtonThemeData floatingActionButtonThemeData(
    BuildContext context,
  ) =>
      Theme.of(context)
          .floatingActionButtonTheme
          .copyWith(backgroundColor: ThemeColors.accentColor);

  /// Theme data for Floating Action Button
  static OutlinedButtonThemeData outlinedButtonThemeData() =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ThemeColors.accentColor,
          side: const BorderSide(color: ThemeColors.accentColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );

  /// Default style for label
  TextStyle labelStyle(BuildContext context) => textThemeDark(context)
      .labelSmall!
      .copyWith(fontSize: 14, color: ThemeColors.clrBlack50);
}

ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: ThemeColors.accentColor,
      primaryColorLight: ThemeColors.accentColor,
      primaryColorDark: ThemeColors.clrAccentBlack,
      scaffoldBackgroundColor: ThemeColors.clrWhite,
      appBarTheme: AppTheme().appBarTheme(),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ThemeColors.accentColor,
        selectionColor: ThemeColors.accentColor.withOpacity(0.4),
        selectionHandleColor: ThemeColors.accentColor,
      ),
      useMaterial3: false,
      focusColor: ThemeColors.accentColor,
      textButtonTheme: AppTheme.textButtonThemeData(),
      elevatedButtonTheme: AppTheme.elevatedButtonThemeData(),
      outlinedButtonTheme: AppTheme.outlinedButtonThemeData(),
      floatingActionButtonTheme:
          AppTheme.floatingActionButtonThemeData(context),
      fontFamily: ThemeFonts.helvetica,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ThemeColors.accentColor,
        secondary: ThemeColors.accentColor,
        background: ThemeColors.clrWhite,
      ),
    );

ThemeData darkTheme(BuildContext context) => ThemeData(
      colorSchemeSeed: ThemeColors.accentColor,
      scaffoldBackgroundColor: ThemeColors.clrBlack100,
      brightness: Brightness.dark,
      useMaterial3: false,
      appBarTheme: AppThemeDark.appBarTheme(),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ThemeColors.accentColor,
        selectionColor: ThemeColors.accentColor,
        selectionHandleColor: ThemeColors.accentColor,
      ),
      focusColor: ThemeColors.accentColor,
      textButtonTheme: AppThemeDark.textButtonThemeData(),
      buttonTheme: AppThemeDark.buttonThemeData(context),
      elevatedButtonTheme: AppThemeDark.elevatedButtonThemeData(),
      outlinedButtonTheme: AppThemeDark.outlinedButtonThemeData(),
      floatingActionButtonTheme:
          AppThemeDark.floatingActionButtonThemeData(context),
      fontFamily: ThemeFonts.helvetica,
    );
