import 'package:bookly_app/Features/home/peresention/views/home_view.dart';
import 'package:bookly_app/Features/splash/peresentation/views/widgets/sliding_animation_text.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/assests_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({
    super.key,
  });

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    //? when called anther methods in init i also savee the single responsibility
    initialSlidingAnimation(); // this method form animation
    navigatHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  //! it is bad to make all widgets to rebuild every time with animation
  //! to solve i will wrap sliding animation with animation builder and remove sliding animation addListener for initState
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment
          .stretch, //? cross axis stretch to make the children to stretch take all the space width of screen
      children: [
        Image.asset(AssetsData.logo),
        SlidingAnimationText(
            animationController: animationController,
            slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initialSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(10,
          0), //? i tell the animation where x = 10 and y = 0, i want it to start
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.fling();
    //animationController.forward();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigatHome() {
    //! if i need to make some calculates to navigat to home extract it to anther method to keep the single responsibility on the method code
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        const HomeView(),
        transition: Transition.fade,
        duration: kTrnasitionDuration,
      );
    });
  }
}
