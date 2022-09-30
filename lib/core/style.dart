// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'package:flutter/material.dart';

class Style {
  static const String APP_NAME = "Spotiplay";

  //Colors
  static const Color PRIMARY = Color(0xFF6C46ED);
  static const Color SECONDARY = Color(0xFFFF6653);
  static const Color THIRD = Color(0xFFE8FF53);

  static const Color SUCCESS = Color(0xFF22184F);
  static const Color ALERT = Color(0xFF170045);
  static const Color ERROR = Color.fromRGBO(255, 123, 143, 1);

  static const Color WHITE = Color(0xffffffff);
  static const Color GREY200 = Color(0xfff1f0f2);
  static const Color GREY400 = Color(0xffd5d5d5);
  static const Color GREY600 = Color(0xff7f7f7f);
  static const Color GREY800 = Color(0xff484848);
  static const Color BLACK = Color(0xff000000);

  // Text size
  static const double XS = 08;
  static const double SM = 12;
  static const double MD = 16;
  static const double LG = 20;
  static const double XL = 24;

  static const double H4 = 28;
  static const double H3 = 32;
  static const double H2 = 36;
  static const double H1 = 40;

  static const double ELEVATION = 5;
  static const double SPLASH = LG;
  static const double RADIUS = XL;
  static const double PADDING = SM;

  // Gaps
  static const EdgeInsets GAP_ALL_XS = EdgeInsets.all(XS);
  static const EdgeInsets GAP_ALL_SM = EdgeInsets.all(SM);
  static const EdgeInsets GAP_ALL_MD = EdgeInsets.all(MD);
  static const EdgeInsets GAP_ALL_LG = EdgeInsets.all(LG);
  static const EdgeInsets GAP_ALL_XL = EdgeInsets.all(XL);

  // Input styles
  static final INPUT_RADIUS = OutlineInputBorder(
    borderRadius: BorderRadius.circular(RADIUS),
  );

  // Text
  static const TEXT_SM_GREY600 = TextStyle(
    color: GREY600,
    fontSize: SM,
  );
  static const TEXT_SM_GREY800 = TextStyle(
    color: GREY800,
    fontSize: SM,
  );
  static const TEXT_SM_BLACK = TextStyle(
    color: BLACK,
    fontSize: SM,
  );
  static const TEXT_SM_BLACK_BOLD = TextStyle(
    color: BLACK,
    fontSize: SM,
    fontWeight: FontWeight.bold,
  );

  static const TEXT_MD_WHITE = TextStyle(
    color: WHITE,
    fontSize: MD,
  );
  static const TEXT_MD_WHITE_BOLD = TextStyle(
    color: WHITE,
    fontSize: MD,
    fontWeight: FontWeight.bold,
  );
  static const TEXT_MD_GREY200 = TextStyle(
    color: GREY200,
    fontSize: MD,
  );
  static const TEXT_MD_GREY400 = TextStyle(
    color: GREY400,
    fontSize: MD,
  );
  static const TEXT_MD_GREY600 = TextStyle(
    color: GREY600,
    fontSize: MD,
  );
  static const TEXT_MD_GREY600_BOLD = TextStyle(
    color: GREY600,
    fontSize: MD,
    fontWeight: FontWeight.bold,
  );
  static const TEXT_MD_GREY600_500 = TextStyle(
    color: GREY600,
    fontSize: MD,
    fontWeight: FontWeight.w500,
  );
  static const TEXT_MD_GREY800 = TextStyle(
    color: GREY800,
    fontSize: MD,
  );
  static const TEXT_MD_BLACK = TextStyle(
    color: BLACK,
    fontSize: MD,
  );
  static const TEXT_MD_PRIMARY = TextStyle(
    color: PRIMARY,
    fontSize: MD,
  );
  static const TEXT_MD_PRIMARY_BOLD = TextStyle(
    color: PRIMARY,
    fontSize: MD,
    fontWeight: FontWeight.bold,
  );
  static const TEXT_MD_SECONDARY = TextStyle(
    color: SECONDARY,
    fontSize: MD,
  );

  static const TEXT_LG_WHITE = TextStyle(
    color: WHITE,
    fontSize: LG,
    fontWeight: FontWeight.w400,
  );
  static const TEXT_LG_BLACK = TextStyle(
    color: BLACK,
    fontSize: LG,
  );
  static const TEXT_LG_BLACK_BOLD = TextStyle(
    color: BLACK,
    fontSize: LG,
    fontWeight: FontWeight.bold,
  );
  static const TEXT_LG_PRIMARY_BOLD = TextStyle(
    color: PRIMARY,
    fontSize: LG,
    fontWeight: FontWeight.bold,
  );

  static const TEXT_H4_WHITE = TextStyle(
    color: WHITE,
    fontSize: H4,
    fontWeight: FontWeight.w300,
  );
  static const TEXT_H4_WHITE_BOLD = TextStyle(
    color: WHITE,
    fontSize: H4,
    fontWeight: FontWeight.bold,
  );
  static const TEXT_H4_BLACK = TextStyle(
    color: BLACK,
    fontSize: H4,
    fontWeight: FontWeight.w300,
  );

  static const TEXT_H2_BLACK = TextStyle(
    color: BLACK,
    fontSize: H2,
    fontWeight: FontWeight.w300,
  );

  static const TEXT_H1_WHITE_BOLD = TextStyle(
    color: WHITE,
    fontSize: H1,
    fontWeight: FontWeight.bold,
  );

  static const TEXT_H1_PRIMARY_BOLD = TextStyle(
    color: PRIMARY,
    fontSize: H1,
    fontWeight: FontWeight.bold,
  );

  // Theme
  static ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light(
      primary: PRIMARY,
      secondary: SECONDARY,
      background: WHITE,
    ),
    dividerColor: GREY600,
    scaffoldBackgroundColor: WHITE,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(MD),
        backgroundColor: PRIMARY,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(RADIUS),
          ),
        ),
      ),
    ),

    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: OutlinedButton.styleFrom(
    //     elevation: ELEVATION,
    //     primary: PRIMARY,
    //     padding: const EdgeInsets.all(MD),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(RADIUS),
    //     ),
    //     side: const BorderSide(
    //       color: PRIMARY,
    //     ),
    //   ),
    // ),

    // cardTheme: CardTheme(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(MD),
    //   ),
    //   elevation: ELEVATION,
    // ),

    // inputDecorationTheme: InputDecorationTheme(
    //   border: INPUT_RADIUS,
    // ),
  );
}
