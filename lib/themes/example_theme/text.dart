part of 'theme.dart';

class _ExampleText extends StatelessWidget implements TextWidgetType {
  const _ExampleText({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ChameleonText.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ChameleonText found in context');
    }
    return Text("By Exemple Theme: ${inheritedWidget.text}");
  }
}