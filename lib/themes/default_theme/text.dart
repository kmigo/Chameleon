part of 'theme.dart';

class DefaultThemeText extends StatelessWidget implements TextWidgetType {
  const DefaultThemeText({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ReflexDSText.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ReflexDSText found in context');
    }
    return Text(inheritedWidget.text);
  }
}