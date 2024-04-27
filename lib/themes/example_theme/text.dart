part of 'theme.dart';

class _ExampleText extends StatelessWidget implements TextWidgetChameleonType {
  const _ExampleText({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = of(context);
    return Text("By Exemple Theme: ${inheritedWidget.text}");
  }
}