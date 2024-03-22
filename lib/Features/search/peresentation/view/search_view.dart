import 'package:bookly_app/Features/home/peresention/views/widgets/book_details_item.dart';
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
              const SizedBox(
                height: 10,
              ),
              const Expanded(child: SearchListView()),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
          //  shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: BookDetailsItem(),
            );
          }),
    );
  }
}
