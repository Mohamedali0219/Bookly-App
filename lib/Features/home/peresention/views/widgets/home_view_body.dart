import 'package:bookly_app/Features/home/peresention/views/widgets/book_details_listview.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/featured_list_view_builder.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeaturedBookListViewBuilder(),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Newest Books',
                        style: Styles.textStyle18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: BestSellerListViewBuilder(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
