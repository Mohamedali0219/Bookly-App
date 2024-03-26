import 'package:flutter/material.dart';

class CustomBookDetailsApp extends StatelessWidget {
  const CustomBookDetailsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 28,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 28,
          ),
        )
      ],
    );
  }
}
