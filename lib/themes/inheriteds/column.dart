part of 'inheriteds.dart';




abstract class ColumnWidgetChameleonType extends Widget {
  const ColumnWidgetChameleonType({super.key});
 
}

extension ColumnWidgetChameleonTypeExtension on ColumnWidgetChameleonType {
   ChameleonColumn of(BuildContext context) {
    final inheritedWidget = ChameleonColumn.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ChameleonColumn found in context');
    }
    return inheritedWidget;
   }
}

class ChameleonColumn extends InheritedWidget {
  final List<Widget> children;
  ChameleonColumn({super.key,required this.children}) : super( child: SimpleBind.instance.get<ColumnWidgetChameleonType>());
    @override
  bool updateShouldNotify(ChameleonColumn oldWidget) {
    return oldWidget.children != children;
  }
  static ChameleonColumn? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ChameleonColumn>();
  }
}

class ChameleonColumnComponent extends StatelessWidget implements ColumnWidgetChameleonType{
  const ChameleonColumnComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = of(context);
    
    return Column(
      children: inheritedWidget.children,
    );
  }
}
