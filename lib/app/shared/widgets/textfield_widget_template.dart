import 'package:check_list/app/core/const.dart';
import 'package:flutter/material.dart';

class TextFieldWidgetTemplate extends StatelessWidget {
  final Widget widgetChildFirst;
  final Widget widgetChildSecond;
  final double widthDuble;

  TextFieldWidgetTemplate({
    required this.widgetChildFirst,
    required this.widgetChildSecond,
    required this.widthDuble,
  });

  @override
  Widget build(BuildContext context) {//widget created to implement two formularies in a row.
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * widthDuble,
          child: widgetChildFirst,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: kSpacing / 2),
            child: widgetChildSecond,
          ),
        ),
      ],
    );
  }
}
