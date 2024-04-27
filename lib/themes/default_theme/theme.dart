

import 'package:flutter/widgets.dart';

import '../inheriteds/widgets.dart';
import '../themes.dart';
part 'text.dart';
part 'column.dart';

class DefaulTheme extends BaseTheme {


  @override
  TextWidgetType get text => const _ChameleonText();

  @override
  ColumnWidgetType get column => const _ChameleonColumn();
  
  
}