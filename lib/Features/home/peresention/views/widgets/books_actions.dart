import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/core/utils/widgets/custom+button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            bakcgroundColor: Colors.white,
            textColor: Colors.black,
            text: '122\$',
          ),
        ),
        Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            bakcgroundColor: AppColors.buttonColor,
            textColor: Colors.white,
            text: 'Read',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
