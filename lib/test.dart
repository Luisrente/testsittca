import 'package:flutter/material.dart';
import 'package:login/dropdow.dart';
import 'package:login/text_input.dart';

class InputDecorationI extends StatelessWidget {
  InputDecorationI({Key? key}) : super(key: key);

  @override
  final emailCtrol = TextEditingController();

  static const _fruits = [
    'Apple',
    'Orange',
    'Lemon',
    'Strawberry',
    'Peach',
    'Cherry',
    'Watermelon',
  ];

  String _selectedFruit = "Apple";
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            InputText(
              placeholder: "jjjj",
              hintText: "rr",
              labelText: "hghghgh",
              textController: emailCtrol,
            ),
            SizedBox(
              height: 200,
            ),
            Center(
              child: InputText(
                placeholder: "jjjj",
                labelText: "TAG",
                hintText: "rrl",
                textController: emailCtrol,
              ),
            ),
            const SizedBox(height: 50),
            DropDown(
                list: ["jhjhjhjjhj", "eee"],
                labelText: "rr",
                onItemSeleccionado: (opcionEscogida) {
                  print("${opcionEscogida}");
                }),
          ],
        ),
      ),
    );
  }
}
