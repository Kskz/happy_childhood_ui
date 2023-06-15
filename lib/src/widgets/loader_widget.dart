import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_childhood_ui/src/theme/app_colors.dart';
import 'package:happy_childhood_ui/src/widgets/platform_resolver_widget.dart';

class Loader extends StatelessWidget {
  const Loader({super.key, this.size = 60});

  final double size;

  @override
  Widget build(BuildContext context) => Center(
        child: PlatformResolver(
          ios: CupertinoActivityIndicator(
            color: AppColors.fadedJade,
            radius: size / 2,
          ),
          android: SizedBox(
            height: size,
            width: size,
            child: const CircularProgressIndicator(
              color: AppColors.fadedJade,
            ),
          ),
        ),
      );
}
