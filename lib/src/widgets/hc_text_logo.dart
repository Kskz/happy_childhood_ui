import 'package:flutter/material.dart';
import 'package:happy_childhood_ui/src/theme/app_colors.dart';

class HCTextLogo extends StatelessWidget {
  const HCTextLogo({Key? key, this.textSize = 45}) : super(key: key);
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Happy Childhood',
      style: TextStyle(
        fontSize: textSize,
        color: AppColors.fadedJade,
        fontFamily: 'Balyona',
      ),
    );
  }
}
