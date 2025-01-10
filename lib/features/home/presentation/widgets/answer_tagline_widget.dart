import 'package:flutter/material.dart';
import 'package:stroll_app/config/app_pallet.dart';
import 'package:stroll_app/config/text_styles.dart';

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
            style: TextStyles.styleProxima(
              fontStyle: FontStyle.italic,
              color: AppPallet.ITALIC_ANSWER_TEXT,
            ),
          ),
        ),
      ],
    );
  }
}
