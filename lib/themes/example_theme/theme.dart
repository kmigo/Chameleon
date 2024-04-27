

import 'package:flutter/widgets.dart';


import '../themes.dart';
import '../inheriteds/inheriteds.dart';
part 'text.dart';
part 'column.dart';


class ExampleTheme extends ChameleonBaseTheme {

  @override
  TextWidgetType get text => const _ExampleText();
  @override
  ColumnWidgetType get column => const _ExampleColumn();
 
  
}