import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_childhood_ui/src/theme/app_colors.dart';

class WebLoader extends StatelessWidget {
  const WebLoader({super.key, this.size = 50});

  final double size;

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          height: size,
          width: size,
          child: const CircularProgressIndicator(
            color: AppColors.fadedJade,
          ),
        ),
      );
}
