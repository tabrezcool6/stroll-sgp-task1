import 'package:flutter/material.dart';
import 'package:stroll_app/config/app_pallet.dart';

/// Single Option Widget
class AnswerOptionsWidget extends StatelessWidget {
  final String optionLetter;
  final String optionText;
  final bool isSelected;
  const AnswerOptionsWidget({
    required this.optionLetter,
    required this.optionText,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: 57.0,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: AppPallet.ANSWER_OPTIONS_BG,
          borderRadius: BorderRadius.circular(12.0),
          border: isSelected
              ? Border.all(color: AppPallet.ANSWER_OPTIONS_BORDER, width: 2.0)
              : null,
        ),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: isSelected ? AppPallet.ANSWER_OPTIONS_BORDER : null,
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFC4C4C4)),
                  ),
                ),
                Text(
                  optionLetter,
                  style: const TextStyle(
                    fontFamily: 'ProximaNova',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: AppPallet.ANSWER_OPTIONS_TEXT,
                    // height: 14.4,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                optionText,
                style: const TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: AppPallet.ANSWER_OPTIONS_TEXT,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// All Options Widget
class AllOptionsWidget extends StatelessWidget {
  const AllOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 14.0),

        ///
        Row(
          children: [
            AnswerOptionsWidget(
                optionLetter: 'A',
                optionText: 'The peace in the early mornings'),
            SizedBox(width: 14.0),
            AnswerOptionsWidget(
                optionLetter: 'B', optionText: 'The magical golden hours'),
          ],
        ),

        SizedBox(height: 14.0),

        Row(
          children: [
            AnswerOptionsWidget(
                optionLetter: 'C', optionText: 'Wind-down time after dinners'),
            SizedBox(width: 14.0),
            AnswerOptionsWidget(
              optionLetter: 'D',
              optionText: 'The serenity past midnight',
              isSelected: true,
            ),
          ],
        ),
        SizedBox(height: 14.0),
      ],
    );
  }
}
