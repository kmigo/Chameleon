part of 'theme.dart';

class _ChameleonText extends StatelessWidget implements TextWidgetType {
  const _ChameleonText({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ChameleonText.of(context);
    if (inheritedWidget == null) {
      throw Exception('No ChameleonText found in context');
    }
    return Text(inheritedWidget.text);
  }
}