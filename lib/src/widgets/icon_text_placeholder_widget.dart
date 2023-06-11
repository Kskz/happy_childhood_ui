import 'package:flutter/material.dart';
import 'package:happy_childhood_ui/src/theme/app_colors.dart';
import 'package:happy_childhood_ui/src/theme/text_styles.dart';

class IconTextPlaceholder extends StatelessWidget {
  const IconTextPlaceholder({
    super.key,
    required this.text,
    required this.iconData,
  });

  IconTextPlaceholder.failedLoading({super.key})
      : text = 'Помилка',
        iconData = Icons.wifi_off_outlined;

  const IconTextPlaceholder.noLaunches({super.key, required this.text})
      : iconData = Icons.rocket_launch_outlined;

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: AppColors.white,
              size: 100,
            ),
            const SizedBox(height: 20),
            Text(
              text,
              style: TextStyles.whiteRegular22,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
}
