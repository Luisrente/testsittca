import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String placeholder;
  final String hintText;
  final TextEditingController textController;
  final TextInputType keyboradType;
  final String labelText;

  const InputText(
      {Key? key,
      required this.placeholder,
      required this.hintText,
      required this.textController,
      this.keyboradType = TextInputType.text,
      required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: Center(
          child: TextField(
        decoration: InputDecoration(
          disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.black)),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.black)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          hintText: hintText,
          fillColor: Color.fromARGB(255, 7, 7, 7),
        ),
      )),
    );
  }
}
