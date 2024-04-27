part of 'theme.dart';



class DefaultThemeColumn extends StatelessWidget  implements ColumnWidgetType{
  const DefaultThemeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ReflexDSColumn.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ReflexDSColumn found in context');
    }
    return Column(
      children: inheritedWidget.children,
    );
  }
}