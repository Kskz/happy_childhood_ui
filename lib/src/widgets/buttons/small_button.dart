import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    required this.onPress,
    required this.label, required this.context,
  }) : super(key: key);

  final void Function(BuildContext context)? onPress;
  final String label;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onPress!(context);
      },
      child: Text(label),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: EdgeInsets.all(12),
        backgroundColor: Color.fromRGBO(44, 86, 160, 1),
      ),
    );
  }
}
