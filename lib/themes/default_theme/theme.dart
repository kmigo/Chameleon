

import 'package:flutter/widgets.dart';

import '../inheriteds/widgets.dart';
import '../themes.dart';
part 'text.dart';
part 'column.dart';

class DefaultTheme extends BaseTheme {


  @override
  TextWidgetType get text => const DefaultThemeText();

  @override
  ColumnWidgetType get column => const DefaultThemeColumn();
  
  
}