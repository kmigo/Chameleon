part of 'inheriteds.dart';

abstract class TextWidgetType extends Widget {
  const TextWidgetType({super.key});
}

extension TextWidgetTypeExtension on TextWidgetType {
  ChameleonText of (BuildContext context) {
    final inheritedWidget = ChameleonText.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ChameleonText found in context');
    }
    return inheritedWidget;
  }
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



class ChameleonTextComponent extends StatelessWidget implements TextWidgetType {
  const ChameleonTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ChameleonText.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ChameleonText found in context');
    }
    return Text(inheritedWidget.text);
  }
}
