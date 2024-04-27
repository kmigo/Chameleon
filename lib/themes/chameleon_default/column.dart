part of 'theme.dart';



class _ChameleonColumn extends StatelessWidget  implements ColumnWidgetType{
  const _ChameleonColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ChameleonColumn.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ChameleonColumn found in context');
    }
    return Column(
      children: inheritedWidget.children,
    );
  }
}