import 'package:ds_whitelabel/simple_bind.dart';


import 'themes/themes.dart';
import 'themes/inheriteds/inheriteds.dart';
export './themes/themes.dart';

export 'themes/chameleon_default/theme.dart';


startDs(BaseTheme theme){
  SimpleBind.instance.bind<TextWidgetType>(theme.text);
  SimpleBind.instance.bind<ColumnWidgetType>(theme.column);

}