// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:flutter/services.dart';
 class _ChameleonDesignTokens {
  final double figmaScale;
  final _Colors colors;
  final _Typography typography;


  _ChameleonDesignTokens({
    required this.figmaScale,
    required this.colors,
    required this.typography,
  });
  factory _ChameleonDesignTokens.fromJson(Map<String, dynamic> json) {
    return _ChameleonDesignTokens(
      figmaScale: json['figmaScale'],
      colors: _Colors.fromJson(json['colors']),
      typography: _Typography.fromJson(json['typography']),
    );
  }
}
 class _Colors {
  final _Light light;


  _Colors({
    required this.light,
  });
  factory _Colors.fromJson(Map<String, dynamic> json) {
_colorsMap["light"] = _Light.fromJson(json['light']);
    return _Colors(
      light: _Light.fromJson(json['light']),
    );
  }
}
 class _Light {
  final String primary;
  final String secondary;
  final String tertiary;
  final String neutral;
  final String foreground;
  final String background;
  final String transparent;
  final String success;
  final String error;


  _Light({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.neutral,
    required this.foreground,
    required this.background,
    required this.transparent,
    required this.success,
    required this.error,
  });
  factory _Light.fromJson(Map<String, dynamic> json) {
    return _Light(
      primary: json['primary'],
      secondary: json['secondary'],
      tertiary: json['tertiary'],
      neutral: json['neutral'],
      foreground: json['foreground'],
      background: json['background'],
      transparent: json['transparent'],
      success: json['success'],
      error: json['error'],
    );
  }
}
final Map<String,dynamic> _colorsMap = {};
 class _Typography {
  final _Subtitle1 subtitle1;
  final _Subtitle2 subtitle2;
  final _Headline1 headline1;
  final _Headline2 headline2;
  final _Headline3 headline3;
  final _Headline4 headline4;
  final _Headline5 headline5;
  final _Headline6 headline6;
  final _Subhead1 subhead1;
  final _Subhead2 subhead2;
  final _BodyText1 bodyText1;
  final _BodyText2 bodyText2;
  final _Caption1 caption1;
  final _Caption2 caption2;
  final _Highlight1 highlight1;
  final _Highlight2 highlight2;
  final _Disabled disabled;
  final _Error error;
  final _Success success;
  final _Warning warning;
  final _ButtonText buttonText;


  _Typography({
    required this.subtitle1,
    required this.subtitle2,
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.headline4,
    required this.headline5,
    required this.headline6,
    required this.subhead1,
    required this.subhead2,
    required this.bodyText1,
    required this.bodyText2,
    required this.caption1,
    required this.caption2,
    required this.highlight1,
    required this.highlight2,
    required this.disabled,
    required this.error,
    required this.success,
    required this.warning,
    required this.buttonText,
  });
  factory _Typography.fromJson(Map<String, dynamic> json) {
_typographyMap["subtitle1"] = _Subtitle1.fromJson(json['subtitle1']);
_typographyMap["subtitle2"] = _Subtitle2.fromJson(json['subtitle2']);
_typographyMap["headline1"] = _Headline1.fromJson(json['headline1']);
_typographyMap["headline2"] = _Headline2.fromJson(json['headline2']);
_typographyMap["headline3"] = _Headline3.fromJson(json['headline3']);
_typographyMap["headline4"] = _Headline4.fromJson(json['headline4']);
_typographyMap["headline5"] = _Headline5.fromJson(json['headline5']);
_typographyMap["headline6"] = _Headline6.fromJson(json['headline6']);
_typographyMap["subhead1"] = _Subhead1.fromJson(json['subhead1']);
_typographyMap["subhead2"] = _Subhead2.fromJson(json['subhead2']);
_typographyMap["bodyText1"] = _BodyText1.fromJson(json['bodyText1']);
_typographyMap["bodyText2"] = _BodyText2.fromJson(json['bodyText2']);
_typographyMap["caption1"] = _Caption1.fromJson(json['caption1']);
_typographyMap["caption2"] = _Caption2.fromJson(json['caption2']);
_typographyMap["highlight1"] = _Highlight1.fromJson(json['highlight1']);
_typographyMap["highlight2"] = _Highlight2.fromJson(json['highlight2']);
_typographyMap["disabled"] = _Disabled.fromJson(json['disabled']);
_typographyMap["error"] = _Error.fromJson(json['error']);
_typographyMap["success"] = _Success.fromJson(json['success']);
_typographyMap["warning"] = _Warning.fromJson(json['warning']);
_typographyMap["buttonText"] = _ButtonText.fromJson(json['buttonText']);
    return _Typography(
      subtitle1: _Subtitle1.fromJson(json['subtitle1']),
      subtitle2: _Subtitle2.fromJson(json['subtitle2']),
      headline1: _Headline1.fromJson(json['headline1']),
      headline2: _Headline2.fromJson(json['headline2']),
      headline3: _Headline3.fromJson(json['headline3']),
      headline4: _Headline4.fromJson(json['headline4']),
      headline5: _Headline5.fromJson(json['headline5']),
      headline6: _Headline6.fromJson(json['headline6']),
      subhead1: _Subhead1.fromJson(json['subhead1']),
      subhead2: _Subhead2.fromJson(json['subhead2']),
      bodyText1: _BodyText1.fromJson(json['bodyText1']),
      bodyText2: _BodyText2.fromJson(json['bodyText2']),
      caption1: _Caption1.fromJson(json['caption1']),
      caption2: _Caption2.fromJson(json['caption2']),
      highlight1: _Highlight1.fromJson(json['highlight1']),
      highlight2: _Highlight2.fromJson(json['highlight2']),
      disabled: _Disabled.fromJson(json['disabled']),
      error: _Error.fromJson(json['error']),
      success: _Success.fromJson(json['success']),
      warning: _Warning.fromJson(json['warning']),
      buttonText: _ButtonText.fromJson(json['buttonText']),
    );
  }
}
 class _Subtitle1 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Subtitle1({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Subtitle1.fromJson(Map<String, dynamic> json) {
    return _Subtitle1(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Subtitle2 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Subtitle2({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Subtitle2.fromJson(Map<String, dynamic> json) {
    return _Subtitle2(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Headline1 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Headline1({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Headline1.fromJson(Map<String, dynamic> json) {
    return _Headline1(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Headline2 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Headline2({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Headline2.fromJson(Map<String, dynamic> json) {
    return _Headline2(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Headline3 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Headline3({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Headline3.fromJson(Map<String, dynamic> json) {
    return _Headline3(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Headline4 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Headline4({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Headline4.fromJson(Map<String, dynamic> json) {
    return _Headline4(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Headline5 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Headline5({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Headline5.fromJson(Map<String, dynamic> json) {
    return _Headline5(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Headline6 {
  final double fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Headline6({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Headline6.fromJson(Map<String, dynamic> json) {
    return _Headline6(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Subhead1 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Subhead1({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Subhead1.fromJson(Map<String, dynamic> json) {
    return _Subhead1(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Subhead2 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Subhead2({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Subhead2.fromJson(Map<String, dynamic> json) {
    return _Subhead2(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _BodyText1 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _BodyText1({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _BodyText1.fromJson(Map<String, dynamic> json) {
    return _BodyText1(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _BodyText2 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _BodyText2({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _BodyText2.fromJson(Map<String, dynamic> json) {
    return _BodyText2(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Caption1 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Caption1({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Caption1.fromJson(Map<String, dynamic> json) {
    return _Caption1(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Caption2 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Caption2({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Caption2.fromJson(Map<String, dynamic> json) {
    return _Caption2(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Highlight1 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Highlight1({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Highlight1.fromJson(Map<String, dynamic> json) {
    return _Highlight1(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Highlight2 {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Highlight2({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Highlight2.fromJson(Map<String, dynamic> json) {
    return _Highlight2(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Disabled {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Disabled({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Disabled.fromJson(Map<String, dynamic> json) {
    return _Disabled(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Error {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Error({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Error.fromJson(Map<String, dynamic> json) {
    return _Error(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Success {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Success({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Success.fromJson(Map<String, dynamic> json) {
    return _Success(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _Warning {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _Warning({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _Warning.fromJson(Map<String, dynamic> json) {
    return _Warning(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
 class _ButtonText {
  final int fontSize;
  final String fontWeight;
  final String fontFamily;
  final String color;
  final double letterSpacing;


  _ButtonText({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
    required this.letterSpacing,
  });
  factory _ButtonText.fromJson(Map<String, dynamic> json) {
    return _ButtonText(
      fontSize: json['fontSize'],
      fontWeight: json['fontWeight'],
      fontFamily: json['fontFamily'],
      color: json['color'],
      letterSpacing: json['letterSpacing'],
    );
  }
}
final Map<String,dynamic> _typographyMap = {};
class ChameleonDesignTokens {


  ChameleonDesignTokens._();
  late double figmaScale;
  final Map<String,dynamic> colorsMap = {};
  late _Colors colors;
  final Map<String,dynamic> typographyMap = {};
  late _Typography typography;
   static final ChameleonDesignTokens instance = ChameleonDesignTokens._();

Future<void> init(String path) async {
     final jsonString = await rootBundle.loadString(path);
     Map<String, dynamic> jsonMap = jsonDecode(jsonString);
     final designTokens = _ChameleonDesignTokens.fromJson(jsonMap);
     figmaScale = designTokens.figmaScale;
     colors = designTokens.colors;
     colorsMap.addAll(colorsMap);
     typography = designTokens.typography;
     typographyMap.addAll(typographyMap);
  }}
