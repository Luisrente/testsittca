import 'package:flutter/material.dart';
import 'package:login/dropdow.dart';
import 'package:login/model/model.dart';
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

  final List<GetUsers> usuarios = [];

  GetUsers user2 = GetUsers(name: "joseee2", userId: 2);
  GetUsers user1 = GetUsers(name: "jose1", userId: 1);

  String _selectedFruit = "Apple";
  Widget build(BuildContext context) {
    usuarios.add(user1);
    usuarios.add(user2);

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
                name: "UserID",
                list: usuarios,
                labelText: "rr",
                onItemSelection: (opcionEscogida) {
                  print("${opcionEscogida}");
                }),
          ],
        ),
      ),
    );
  }
}
