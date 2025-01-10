import 'package:flutter/material.dart';
import 'package:stroll_app/config/app_pallet.dart';
import 'package:stroll_app/config/image_path.dart';
import 'package:stroll_app/config/text_styles.dart';

class HomeUserPofileWidget extends StatelessWidget {
  const HomeUserPofileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(ImagePath.joey_BG),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Angelina, 28',
                style: TextStyles.styleProxima(weight: FontWeight.w700),
              ),
              const SizedBox(height: 4.0),
              Text(
                'What is your favorite time of the day?',
                style: TextStyles.styleProxima(
                  fontSize: 20.0,
                  weight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
