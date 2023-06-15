import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({Key? key, required this.onPress}) : super(key: key);

  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text("today"),
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
