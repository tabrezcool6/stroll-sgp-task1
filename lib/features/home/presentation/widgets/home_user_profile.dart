import 'package:flutter/material.dart';
import 'package:stroll_app/config/app_pallet.dart';
import 'package:stroll_app/config/image_path.dart';

class HomeUserPofileWidget extends StatelessWidget {
  const HomeUserPofileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(ImagePath.joey_BG),
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Angelina, 28',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                  // height: 14.4,
                  color: AppPallet.ANSWER_OPTIONS_TEXT,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                'What is your favorite time of the day? favorite time of the day?',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                  color: AppPallet.ANSWER_OPTIONS_TEXT,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
