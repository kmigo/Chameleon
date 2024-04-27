import 'package:ds_whitelabel/simple_bind.dart';

import 'themes/inheriteds/widgets.dart';
import 'themes/themes.dart';

export './themes/themes.dart';
export './themes/inheriteds/widgets.dart';
export './themes/default_theme/theme.dart';

startDs(BaseTheme theme){
  SimpleBind.instance.bind<TextWidgetType>(theme.text);
  SimpleBind.instance.bind<ColumnWidgetType>(theme.column);

}