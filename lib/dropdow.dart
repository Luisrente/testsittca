import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  late List<dynamic> list;
  final String labelText;
  final dynamic Function(dynamic opcionEscogida) onItemSeleccionado;

  DropDown(
      {Key? key,
      required this.list,
      required this.labelText,
      required this.onItemSeleccionado})
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

  dynamic selectedItem = '';
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
            child: DropdownButton(
              isExpanded: true,
              isDense: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              value: selectedItem,
              items: widget.list.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (dynamic nuevaSel) {
                setState(() {
                  selectedItem = nuevaSel!;
                });
                widget.onItemSeleccionado(nuevaSel);
              },
            ),
          ),
        ));
  }
}
