import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_app/config/app_pallet.dart';
import 'package:stroll_app/config/image_path.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 64.0),

        ///
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stroll Bonfire',
              style: TextStyle(
                fontSize: 34,
                color: AppPallet.HOME_HEADING,
                fontWeight: FontWeight.w700,
                fontFamily: 'ProximaNova',
                shadows: <Shadow>[
                  Shadow(
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 7.9,
                    color: const Color(0xFF000000).withOpacity(0.2),
                  ),
                  const Shadow(
                    offset: Offset(0.0, 0.0),
                    blurRadius: 2.0,
                    color: Color(0xFFBEBEBE),
                  ),
                  Shadow(
                    offset: const Offset(0.0, 1.0),
                    blurRadius: 2.0,
                    color: const Color(0xFF24232F80).withOpacity(0.5),
                  ),
                ],
              ),
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
            const Text(
              '22h 00m',
              style: TextStyle(
                fontFamily: 'ProximaNova',
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                // height: 12.0,
                color: AppPallet.ANSWER_OPTIONS_TEXT,
              ),
            ),
            const SizedBox(width: 8.0),
            SvgPicture.asset(SVGPaths.HOME_USER),
            const SizedBox(width: 4.0),
            const Text(
              '103',
              style: TextStyle(
                fontFamily: 'ProximaNova',
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                // height: 12.0,
                color: AppPallet.ANSWER_OPTIONS_TEXT,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
