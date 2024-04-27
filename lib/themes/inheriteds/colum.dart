part of 'widgets.dart';

abstract class ColumnWidgetType extends Widget {
  const ColumnWidgetType({super.key});
}

class ReflexDSColumn extends InheritedWidget {
  final List<Widget> children;
  ReflexDSColumn({super.key,required this.children}) : super( child: SimpleBind.instance.get<ColumnWidgetType>());
    @override
  bool updateShouldNotify(ReflexDSColumn oldWidget) {
    return oldWidget.children != children;
  }
  static ReflexDSColumn? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ReflexDSColumn>();
  }
}

