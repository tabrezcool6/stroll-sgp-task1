import 'package:flutter/material.dart';
import 'package:stroll_app/config/app_pallet.dart';
import 'package:stroll_app/config/image_path.dart';
import 'package:stroll_app/features/home/presentation/widgets/answer_options_widget.dart';
import 'package:stroll_app/features/home/presentation/widgets/answer_tagline_widget.dart';
import 'package:stroll_app/features/home/presentation/widgets/bottom_nav_bar.dart';
import 'package:stroll_app/features/home/presentation/widgets/home_title_widget.dart';
import 'package:stroll_app/features/home/presentation/widgets/home_user_profile.dart';
import 'package:stroll_app/features/home/presentation/widgets/pick_your_option_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppPallet.TRANSPARENT,
        shadowColor: AppPallet.TRANSPARENT,
      ),

      /// BODY
      body: Stack(
        children: [
          /// Home Background Configs
          Image.asset(
            ImagePath.Home_BG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.0, 0.3],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
          ),

          /// BOTTOM CHILDRENS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0)
                .copyWith(bottom: 8.0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///
                /// Home Title Widget
                HomeTitleWidget(),

                Spacer(),

                /// PROFILE CONTAINER
                HomeUserPofileWidget(),

                ///
                AnswerTaglineWidget(),

                ///
                AllOptionsWidget(),

                ///
                PickYourOptionWidget()
              ],
            ),
          )
        ],
      ),

      /// BOTTOM NAV BAR
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
