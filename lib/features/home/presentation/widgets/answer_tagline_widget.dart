import 'package:flutter/material.dart';
import 'package:stroll_app/config/app_pallet.dart';

class AnswerTaglineWidget extends StatelessWidget {
  const AnswerTaglineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8.0),
        Align(
          alignment: Alignment.center,
          child: Text(
            '“Mine is definitely the peace in the morning.”',
            style: TextStyle(
              fontFamily: 'ProximaNova',
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              // height: 14.4,
              color: AppPallet.ITALIC_ANSWER_TEXT,
            ),
          ),
        ),
      ],
    );
  }
}
