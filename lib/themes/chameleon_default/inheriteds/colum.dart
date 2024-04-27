part of '../theme.dart';


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

