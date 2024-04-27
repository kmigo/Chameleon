import '/simple_bind.dart';


import 'themes/themes.dart' ;
import 'themes/inheriteds/inheriteds.dart';
export './themes/themes.dart';
export './themes/inheriteds/inheriteds.dart' hide ChameleonColumnComponent, ChameleonTextComponent;




startDs(ChameleonBaseTheme theme){
  SimpleBind.instance.bind<TextWidgetType>(theme.text);
  SimpleBind.instance.bind<ColumnWidgetType>(theme.column);

}