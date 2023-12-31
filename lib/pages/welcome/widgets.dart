import 'package:flutter/material.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/common/widgets/app_shadow.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';

Widget appOnboardingPage(PageController controller, BuildContext context,
    {String imagePath = "",
    String title = "",
    String subTitle = "",
    int index = 0}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
          margin: const EdgeInsets.only(top: 15),
          child: text24Nomal(text: title)),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Nomal(text: subTitle),
      ),
      _nextButton(index, controller, context)
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
      } else {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => const SignIn()));
        Navigator.pushNamed(context, "/signIn");
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(
          child: text16Nomal(
              text: index == 3 ? "Get Stated" : "Next",
              color: AppColors.primaryElementText)),
    ),
  );
}
