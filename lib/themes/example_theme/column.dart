part of 'theme.dart';




class _ExampleColumn extends StatelessWidget implements ColumnWidgetChameleonType{
  const _ExampleColumn ({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = of(context);
    
    return Column(
      children: inheritedWidget.children,
    );
  }
}
