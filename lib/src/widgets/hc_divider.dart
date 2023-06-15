import 'package:flutter/material.dart';
import 'package:happy_childhood_ui/happy_childhood_ui.dart';

class HCDivider extends StatelessWidget {
  const HCDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.fadedJade,
        ),
        width: 3,
        height: double.infinity,
      );
}
