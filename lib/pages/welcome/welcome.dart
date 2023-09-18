import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/welcome/notifier/welcome_notifier.dart';
import 'package:ulearning_app/pages/welcome/widgets.dart';

// final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context);

    // final index = ref.watch(indexProvider);
    final index = ref.watch(indexDotProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              margin: EdgeInsets.only(top: 30.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  //Showing three welcome paper
                  PageView(
                    onPageChanged: (value) {
                      // ref.read(indexProvider.notifier).state = value;
                      ref.read(indexDotProvider.notifier).changeIndex(value);
                    },
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      appOnboardingPage(_controller, context,
                          imagePath: "assets/images/reading.png",
                          title: "First is Learning",
                          subTitle:
                              "Forget about off paper knowledge in one learning",
                          index: 1),
                      appOnboardingPage(_controller, context,
                          imagePath: "assets/images/man.png",
                          title: "Connect With Everyone",
                          subTitle:
                              "Alway keep touch with your tutor and frien. Let's get connected",
                          index: 2),
                      appOnboardingPage(_controller, context,
                          imagePath: "assets/images/boy.png",
                          title: "Alway Factinated Learning",
                          subTitle:
                              "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                          index: 3)
                    ],
                  ),
                  //for showing dots indicator
                  Positioned(
                    bottom: 30,
                    child: DotsIndicator(
                      position: index,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                          size: const Size.square(9),
                          activeSize: const Size(24.0, 8.0),
                          activeShape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w))),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
