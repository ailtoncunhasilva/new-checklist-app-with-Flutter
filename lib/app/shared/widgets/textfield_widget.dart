import 'package:check_list/app/core/const.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final IconData? icon;
  final String? labelText;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final OutlineInputBorder? outlineInputBorder;

  TextFieldWidget({
    this.icon,
    this.labelText,
    this.controller,
    this.onSaved,
    this.onChanged,
    this.contentPadding,
    this.outlineInputBorder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: outlineInputBorder,
        contentPadding: const EdgeInsets.only(left: kSpacing),
        prefixIcon: icon != null ? Icon(icon) : null,//it´s necessary to have not space in the textformfield init
        labelText: labelText,
      ),
      onSaved: onSaved,
      onChanged: onChanged,
    );
  }
}
