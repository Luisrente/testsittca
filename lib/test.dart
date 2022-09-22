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
            ),

            // Container(
            //   width: 320,
            //   child: InputDecorator(
            //     decoration: InputDecoration(
            //       labelText: 'Fruit',
            //       // labelStyle: Theme.of(context).primaryTextTheme.caption.copyWith(color: Colors.black),
            //       border: const OutlineInputBorder(),
            //     ),
            //     child: DropdownButtonHideUnderline(
            //       child: DropdownButton(
            //         isExpanded: true,
            //         isDense: true, // Reduces the dropdowns height by +/- 50%
            //         icon: Icon(Icons.keyboard_arrow_down),
            //         value: _selectedFruit,
            //         items: _fruits.map((item) {
            //           return DropdownMenuItem(
            //             value: item,
            //             child: Text(item),
            //           );
            //         }).toList(),
            //         onChanged: ((value) {}),
            //         // onChanged: (selectedItem) => setState(() => _selectedFruit = selectedItem,
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
