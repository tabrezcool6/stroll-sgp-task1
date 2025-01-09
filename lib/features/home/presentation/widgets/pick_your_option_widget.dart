import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_app/config/image_path.dart';

class PickYourOptionWidget extends StatelessWidget {
  const PickYourOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          const SizedBox(width: 6.0),
          const Text(
            "Pick your option.\nSee who has a similar mind.",
            style: TextStyle(
              fontFamily: 'ProximaNova',
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              height: 1.2,
              color: Color(0xFFE5E5E5),
            ),
          ),
          const Spacer(),
          SvgPicture.asset(SVGPaths.POLL_MIC),
          const SizedBox(width: 6.0),
          SvgPicture.asset(SVGPaths.POLL_ARROW_RIGHT),
        ],
      ),
    );
  }
}
