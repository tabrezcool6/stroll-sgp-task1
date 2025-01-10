import 'package:flutter/material.dart';
import 'package:stroll_app/config/app_pallet.dart';

class TextStyles {
  ///
  /// Home headng Text Style
  static TextStyle homeHeadingStyle() => TextStyle(
        fontSize: 34,
        color: AppPallet.HOME_HEADING,
        fontWeight: FontWeight.w700,
        fontFamily: 'ProximaNova',
        shadows: <Shadow>[
          Shadow(
            offset: const Offset(0.0, 0.0),
            blurRadius: 7.9,
            color: const Color(0xFF000000).withOpacity(0.2),
          ),
          const Shadow(
            offset: Offset(0.0, 0.0),
            blurRadius: 2.0,
            color: Color(0xFFBEBEBE),
          ),
          Shadow(
            offset: const Offset(0.0, 1.0),
            blurRadius: 2.0,
            color: const Color(0xFF24232F80).withOpacity(0.5),
          ),
        ],
      );

  ///
  /// STYLE - Size 12.0, Weight 400
  static TextStyle styleProxima({
    double? fontSize,
    FontWeight? weight,
    Color? color,
    double? height,
    FontStyle? fontStyle,
  }) {
    return TextStyle(
      fontFamily: 'ProximaNova',
      fontSize: fontSize ?? 12.0,
      fontWeight: weight ?? FontWeight.w400,
      color: color ?? AppPallet.ANSWER_OPTIONS_TEXT,
      height: height, // 14.4,
      fontStyle: fontStyle,
    );
  }

  ///
  /// STYLE - Size 12.0, Weight 400
  // static TextStyle styleProximaS12W700() {
  //   return const TextStyle(
  //     fontFamily: 'ProximaNova',
  //     fontSize: 12.0,
  //     fontWeight: FontWeight.w700,
  //     color: AppPallet.ANSWER_OPTIONS_TEXT,
  //     // height: 14.4,
  //   );
  // }

  // ///
  // /// STYLE - Size 14.0, Weight 400
  // static TextStyle styleProximaS14W400() {
  //   return const TextStyle(
  //     fontFamily: 'ProximaNova',
  //     fontSize: 14.0,
  //     fontWeight: FontWeight.w400,
  //     color: AppPallet.ANSWER_OPTIONS_TEXT,
  //     // height: 14.4,
  //   );
  // }

  // ///
  // /// STYLE - Size 14.0, Weight 400, line Height 1.2
  // static TextStyle styleProximaS12W400H12() {
  //   return const TextStyle(
  //     fontFamily: 'ProximaNova',
  //     fontSize: 12.0,
  //     fontWeight: FontWeight.w400,
  //     color: AppPallet.ANSWER_OPTIONS_TEXT,
  //     height: 1.2,
  //   );
  // }
}
