import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 20,
        ),
        border: buildOutLineInputBorder(),
        // enabledBorder: buildOutLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
