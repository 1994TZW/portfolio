import 'package:flutter/material.dart';
import '../theme.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final double max;
  const ExpandableText({Key? key, required this.text, required this.max})
      : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  TextPainter? textPainter;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return isOpen
        ? SizedBox(
            child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(children: [
                    TextSpan(
                        text: widget.text,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: textColor,
                          letterSpacing: 0.75,
                        )),
                    WidgetSpan(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              isOpen = !isOpen;
                            });
                          },
                          child: const Text("See Less",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: iconColor,
                                letterSpacing: 0.75,
                              ))),
                    )
                  ]),
                )))
        : Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              textAlign: TextAlign.start,
              maxLines: 4,
              text: TextSpan(children: [
                TextSpan(
                    text:
                        "${widget.text.substring(0, int.parse("${(widget.text.length * widget.max).toInt()}"))}...",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: textColor,
                      letterSpacing: 0.75,
                    )),
                WidgetSpan(
                  child: InkWell(
                      mouseCursor: SystemMouseCursors.click,
                      onTap: () {
                        setState(() {
                          isOpen = !isOpen;
                        });
                      },
                      child: const Text("See More",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: iconColor,
                            letterSpacing: 0.75,
                          ))),
                )
              ]),
            ),
          );
  }
}
