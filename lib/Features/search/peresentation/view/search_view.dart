import 'package:bookly_app/Features/search/peresentation/view/widgets/custom_search_text_filed.dart';
import 'package:bookly_app/Features/search/peresentation/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              CustomSearchTextField(),
              SizedBox(
                height: 10,
              ),
              Expanded(child: SearchListView()),
            ],
          ),
        ),
      ),
    );
  }
}
