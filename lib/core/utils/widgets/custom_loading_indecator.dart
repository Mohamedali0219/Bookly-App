import 'package:flutter/material.dart';

class CustomlaodingIndecator extends StatelessWidget {
  const CustomlaodingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
