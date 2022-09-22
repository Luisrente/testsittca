import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  late List<String> list;
  final String labelText;

  DropDown({Key? key, required this.list, required this.labelText})
      : super(key: key);
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItem = widget.list[0];
  }

  String selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: 'Fruit',
            // labelStyle: Theme.of(context).primaryTextTheme.caption.copyWith(color: Colors.black),
            border: const OutlineInputBorder(),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              isDense: true, // Reduces the dropdowns height by +/- 50%
              icon: Icon(Icons.keyboard_arrow_down),
              value: selectedItem,
              items: widget.list.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              // onChanged: ((value) {}),
              onChanged: (value) => setState(
                () => selectedItem = value!,
              ),
            ),
          ),
        ));
  }
}
