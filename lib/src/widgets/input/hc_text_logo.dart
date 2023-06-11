import 'package:flutter/material.dart';
import 'package:happy_childhood_ui/src/theme/app_colors.dart';

class HCTextLogo extends StatelessWidget {
  const HCTextLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Happy Childhood',
      style: TextStyle(
        fontSize: 45,
        color: AppColors.fadedJade,
        fontFamily: 'Balyona',
      ),
    );
  }
}
