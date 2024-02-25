

import 'package:flutter/cupertino.dart';

extension SizeBox on num{
  SizedBox get height => SizedBox(height: toDouble(),);
  SizedBox get width => SizedBox(width: toDouble(),);
}

class TextStyleWidget extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  const TextStyleWidget(
      {super.key, this.title, this.textColor, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
          fontSize: fontSize, color: textColor, fontWeight: fontWeight),
    );
  }
}
