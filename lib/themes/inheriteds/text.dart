part of 'widgets.dart';
abstract class TextWidgetType extends Widget {
  const TextWidgetType({super.key});
}

class ReflexDSText extends InheritedWidget {
  final String text;
  ReflexDSText({super.key,required this.text}) : super( child: SimpleBind.instance.get<TextWidgetType>());
    @override
  bool updateShouldNotify(ReflexDSText oldWidget) {
    return oldWidget.text != text;
  }
  static ReflexDSText? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ReflexDSText>();
  }
}

