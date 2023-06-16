import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DropDown<T> extends StatefulWidget {
  DropDown({
    Key? key,
    required this.hint,
    required this.items,
    required this.onChanged,
    required this.selectedValue,
    required this.textStyle,
    this.isExpended = false,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget hint;
  final List<DropdownMenuItem<T>> items;
  final void Function(T) onChanged;
  final T selectedValue;
  final TextStyle textStyle;
  final bool isExpended;
  final double? width;
  final double? height;

  @override
  State<DropDown<T>> createState() => _DropDownState<T>();
}

class _DropDownState<T> extends State<DropDown<T>> {
  late T selectedValue;

  @override
  void initState() {
    selectedValue = widget.selectedValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: DropdownButton2<T>(
        isExpanded: widget.isExpended,
        hint: widget.hint,
        style: widget.textStyle,
        value: selectedValue,
        onChanged: (value) {
          if (value != null) {
            setState(() {
              selectedValue = value;
              widget.onChanged(value);
            });
          }
        },
        items: widget.items,
      ),
    );
  }
}
