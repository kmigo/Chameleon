part of 'widgets.dart';
abstract class TextWidgetType extends Widget {
  const TextWidgetType({super.key});
}

class ChameleonText extends InheritedWidget {
  final String text;
  ChameleonText({super.key,required this.text}) : super( child: SimpleBind.instance.get<TextWidgetType>());
    @override
  bool updateShouldNotify(ChameleonText oldWidget) {
    return oldWidget.text != text;
  }
  static ChameleonText? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ChameleonText>();
  }
}

