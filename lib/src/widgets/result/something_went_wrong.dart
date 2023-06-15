import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SomethigWentWrong extends StatelessWidget {
  const SomethigWentWrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Oops..Something went wrong"),
    );
  }
}
