

import 'package:flutter/widgets.dart';

import '../../simple_bind.dart';
import '../themes.dart';
import '../inheriteds/inheriteds.dart';
part 'text.dart';
part 'column.dart';
part 'inheriteds/text.dart';
part 'inheriteds/colum.dart';

class ChameleonTheme extends BaseTheme {


  @override
  TextWidgetType get text => const _ChameleonText();

  @override
  ColumnWidgetType get column => const _ChameleonColumn();
  
  
}