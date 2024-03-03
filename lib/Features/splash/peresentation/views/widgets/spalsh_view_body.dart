import 'package:bookly_app/Features/splash/peresentation/views/widgets/sliding_animation_text.dart';
import 'package:bookly_app/core/utils/assests.dart';
import 'package:flutter/material.dart';

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
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(10,
          0), //? i tell the animation where x = 10 and y = 0, i want it to start
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
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
}
