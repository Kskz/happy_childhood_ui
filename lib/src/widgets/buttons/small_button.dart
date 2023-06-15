import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
