import 'package:flutter/material.dart';

class TextBuilder extends StatelessWidget {
  final String? text;
  final double? fontsize;
  final Color? color;
  final FontWeight? fontweight;
  final double? letterSpacing;
  final TextOverflow? textOverflow;
  final int? maxlines;
  final TextAlign? textAlign;
  final double? height;
  final double? wordSpacing;
  final TextDecoration? textDecoration;
  
  const TextBuilder({
    Key? key,
    @required this.text,
    this.fontsize,
    this.color,
    this.fontweight,
    this.letterSpacing,
    this.textOverflow,
    this.maxlines,
    this.textAlign,
    this.height,
    this.wordSpacing,
    this.textDecoration,
  }):super(key: key)
  ;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontWeight: fontweight,
        letterSpacing: letterSpacing,
        height: height,
        wordSpacing: wordSpacing,
        decoration: textDecoration,
      ),
      maxLines: maxlines,
      overflow: textOverflow,
      textAlign: textAlign,
      softWrap: true,
    );
  }
}
