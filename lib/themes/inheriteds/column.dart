part of 'inheriteds.dart';




abstract class ColumnWidgetType extends Widget {
  const ColumnWidgetType({super.key});
 
}

extension ColumnWidgetTypeExtension on ColumnWidgetType {
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
  ChameleonColumn({super.key,required this.children}) : super( child: SimpleBind.instance.get<ColumnWidgetType>());
    @override
  bool updateShouldNotify(ChameleonColumn oldWidget) {
    return oldWidget.children != children;
  }
  static ChameleonColumn? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ChameleonColumn>();
  }
}

class ChameleonColumnComponent extends StatelessWidget implements ColumnWidgetType{
  const ChameleonColumnComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = of(context);
    
    return Column(
      children: inheritedWidget.children,
    );
  }
}
