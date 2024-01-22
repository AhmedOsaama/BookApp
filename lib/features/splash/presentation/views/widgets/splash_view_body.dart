import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants.dart';
import 'package:untitled/core/utils/assets.dart';

import '../../../../home/presentation/views/home_view.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(), transition: Transition.fade, duration: kTransitionDuration);
    });
  }

  void initSlidingAnimation() {
     animationController = AnimationController(vsync: this, duration: const Duration(minutes: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
         SlidingText(slidingAnimation: slidingAnimation,),

        ]
      ),
    );
  }
}



