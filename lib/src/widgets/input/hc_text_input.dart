import 'package:flutter/material.dart';

import '../../../happy_childhood_ui.dart';
import '../../theme/my_flutter_app_icons.dart';


enum IconType { password, child }

class HCTextInput extends StatelessWidget {
  final iconType;
  final hintText;

  const HCTextInput({
    Key? key,
    required this.iconType,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.abc;

    switch (iconType) {
      case IconType.password:
        icon = MyFlutterApp.Password;
        break;
      case IconType.child:
        icon = MyFlutterApp.Child;
        break;
    }
    return SizedBox(
      height: 55,
      width: 350,
      child: TextField(
        style: TextStyle(color: AppColors.fadedJade), //<-- SEE HERE,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(color: AppColors.fadedJade),
          icon: Icon(
            icon,
            color: AppColors.fadedJade,
          ),
        ),
      ),
    );
  }
}
