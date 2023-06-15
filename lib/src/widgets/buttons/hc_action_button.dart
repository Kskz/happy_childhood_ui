import 'package:flutter/material.dart';
import 'package:happy_childhood_ui/src/theme/app_colors.dart';


class HCActionButton extends StatelessWidget {
  final void Function(BuildContext context)? onPress;
  final String label;

  const HCActionButton({
    Key? key,
    required this.label,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.fern,
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: const Size(300, 40), //////// HERE
        ),
        onPressed: () {
          onPress!(context);
        },
        child: Text(label),
      ),
    );
  }
}
