import 'dart:convert';

import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  late List<dynamic> list;
  final String labelText;
  final String name;
  final dynamic Function(dynamic itemSelection) onItemSelection;

  DropDown(
      {Key? key,
      required this.list,
      required this.labelText,
      required this.onItemSelection,
      required this.name})
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

  dynamic selectedItem;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: widget.labelText,
            border: const OutlineInputBorder(),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<dynamic>(
              isExpanded: true,
              isDense: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              value: selectedItem,
              items: widget.list.map((item) {
                Map personMap = item.toJson();
                print(personMap);
                return DropdownMenuItem<dynamic>(
                  value: item,
                  child: Text("${personMap[widget.name]}"),
                );
              }).toList(),
              onChanged: (dynamic nuevaSel) {
                setState(() {
                  selectedItem = nuevaSel!;
                });
                widget.onItemSelection(nuevaSel);
              },
            ),
          ),
        ));
  }
}
