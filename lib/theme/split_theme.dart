import 'package:flutter/material.dart';

class SplitThemeColors extends ColorSwatch<int> {
  const SplitThemeColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get shade100 => this[100]!;
  Color get shade200 => this[200]!;
  Color get shade300 => this[300]!;
  Color get shade400 => this[400]!;
  Color get shade500 => this[500]!;
}

class SplitColors {
  SplitColors._();

  static const Color light = Color(0xFFF0F5FF);
  static const Color dark = Color(0xFF001233);
  static const Color dark2 = Color(0xFF182847);

  static const int _primaryValue = 0xFFFC0A7F;
  static const SplitThemeColors primary = SplitThemeColors(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFFED6EA),
      200: Color(0xFFFE84BF),
      300: Color(_primaryValue),
      400: Color(0xFFC2025F),
      500: Color(0xFF81023F),
    },
  );

  static const int _secondaryValue = 0xFF5DFDDD;
  static const SplitThemeColors secondary = SplitThemeColors(
    _secondaryValue,
    <int, Color>{
      100: Color(0xFFCBFFF5),
      200: Color(_secondaryValue),
      300: Color(0xFF3CD1B3),
      400: Color(0xFF11A88A),
      500: Color(0xFF087C65),
    },
  );

  static const int _alertValue = 0xFFEC1C5A;
  static const SplitThemeColors alert = SplitThemeColors(
    _alertValue,
    <int, Color>{
      100: Color(0xFFFFE7EE),
      200: Color(0xFFFF6996),
      300: Color(_alertValue),
      400: Color(0xFFB40F40),
      500: Color(0xFF670A26),
    },
  );

  static const int _grayValue = 0xFFE0E1E3;
  static const SplitThemeColors gray = SplitThemeColors(
    _grayValue,
    <int, Color>{
      100: Color(0xFFF1F4F5),
      200: Color(0xFFEFEFEF),
      300: Color(_grayValue),
      400: Color(0xFFC4C7CA),
      500: Color(0xFF909399),
    },
  );
}

class SplitTypography {
  SplitTypography._();

  static TextStyle subtitle1({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle subtitle2({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle body1({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle body2({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle body3({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle button({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle link({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: textColor,
      fontStyle: FontStyle.normal,
      decoration: TextDecoration.underline,
      decorationColor: textColor,
    );
  }

  static TextStyle label({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle title1({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 32,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle title2({Color? textColor = Colors.white}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: textColor,
      fontStyle: FontStyle.normal,
    );
  }
}

const LinearGradient gradientScaffold = LinearGradient(
  colors: [
    Color(0xFF001233),
    Color(0xFFFC0A7F),
  ],
  stops: [
    0.65,
    1,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

class SplitTextLogo extends StatelessWidget {
  const SplitTextLogo({Key? key}) : super(key: key);
  final Gradient _splitTextGradient = const LinearGradient(
    colors: [
      Color(0xffFC0A7F),
      Color(0xff00FAFF),
    ],
    stops: [
      0.4,
      1,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.modulate,
      shaderCallback: (size) => _splitTextGradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      ),
      child: const Text(
        'split/',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
        ),
      ),
    );
  }
}
