import 'package:flutter/material.dart';
import 'package:share_code/utils/dimensions.dart';

class MyTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final TextAlign textAlign;
  final int maxLine;
  final TextOverflow? textOverflow;

  final VoidCallback? onTap;

  const MyTextWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight = FontWeight.bold,
    this.textColor = Colors.black,
    this.textAlign = TextAlign.center,
    this.maxLine = 2,
    this.textOverflow = TextOverflow.ellipsis,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? dimensions.fontSize21,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
        textAlign: textAlign,
        maxLines: maxLine,
        overflow: textOverflow,
      ),
    );
  }
}
