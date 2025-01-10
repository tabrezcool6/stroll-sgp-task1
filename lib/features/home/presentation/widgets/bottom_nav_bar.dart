import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_app/config/app_pallet.dart';
import 'package:stroll_app/config/image_path.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 79,
      decoration: const BoxDecoration(
        color: AppPallet.BOTTOM_NAVBAR_BG,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Child 1
                SizedBox(
                  height: 44,
                  width: 44,
                  child: SvgPicture.asset(
                    SVGPaths.BOTTOM_NAV_CARD,
                  ),
                ),

                /// Child 2
                Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 11.0, bottom: 6.0),
                        child: SvgPicture.asset(
                          SVGPaths.BOTTOM_NAV_BONFIRE,
                        ),
                      ),
                    ),

                    ///
                    Positioned(
                      top: 5.0,
                      right: -2.0,
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          SVGPaths.BOTTOM_NAV_BADGE,
                        ),
                      ),
                    )
                  ],
                ),

                /// Child 3
                Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.84, left: 9.56, bottom: 8.0),
                        child: SvgPicture.asset(
                          SVGPaths.BOTTOM_NAV_CHAT,
                        ),
                      ),
                    ),

                    ///
                    Positioned(
                      top: 5.0,
                      right: -2.0,
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              SVGPaths.BOTTOM_NAV_BADGE,
                            ),
                            const Text(
                              '10',
                              style: TextStyle(fontSize: 7.0),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                /// Child 4
                SvgPicture.asset(
                  SVGPaths.BOTTOM_NAV_USER,
                ),
              ],
            ),
          ),

          /// Home Indicator
          Container(
            margin: const EdgeInsets.only(top: 21.0, bottom: 12.0),
            width: 135,
            height: 5,
            decoration: BoxDecoration(
              color: AppPallet.HOME_INDICATOR,
              borderRadius: BorderRadius.circular(100.0),
            ),
          )

          ///
        ],
      ),
    );
  }
}
