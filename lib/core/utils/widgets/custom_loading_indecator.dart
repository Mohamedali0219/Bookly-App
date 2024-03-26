import 'package:flutter/material.dart';

class CustomLaodingIndecator extends StatelessWidget {
  const CustomLaodingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
