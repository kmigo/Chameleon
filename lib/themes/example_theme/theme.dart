

import 'package:flutter/widgets.dart';


import '../themes.dart';
import '../inheriteds/inheriteds.dart';
part 'text.dart';
part 'column.dart';


class ExampleTheme extends ChameleonBaseTheme {

  @override
  TextWidgetChameleonType get text => const _ExampleText();
  @override
  ColumnWidgetChameleonType get column => const _ExampleColumn();
 
  
}