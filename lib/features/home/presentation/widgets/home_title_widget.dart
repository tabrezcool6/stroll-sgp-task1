import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_app/config/image_path.dart';
import 'package:stroll_app/config/text_styles.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ///
    return Column(
      children: [
        const SizedBox(height: 64.0),

        ///
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stroll Bonfire',
              style: TextStyles.homeHeadingStyle(),
            ),

            const SizedBox(width: 8.0),

            ///
            SvgPicture.asset(
              SVGPaths.HOME_DOWN_ARROW,
            )
          ],
        ),

        ///
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(SVGPaths.HOME_CLOCK),
            const SizedBox(width: 4.0),
            Text(
              '22h 00m',
              style: TextStyles.styleProxima(weight: FontWeight.w600),
            ),
            const SizedBox(width: 12.0),
            SvgPicture.asset(SVGPaths.HOME_USER),
            const SizedBox(width: 4.0),
            Text(
              '103',
              style: TextStyles.styleProxima(weight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
