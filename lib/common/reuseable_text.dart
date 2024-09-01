import 'package:flutter/widgets.dart';

class ReuseableText extends StatelessWidget {
  const ReuseableText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      maxLines: 1,
      style: style,
    );
  }
}
