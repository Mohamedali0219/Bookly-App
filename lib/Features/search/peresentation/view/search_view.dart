import 'package:bookly_app/Features/search/peresentation/view/widgets/custom_search_text_filed.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              CustomSearchTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
