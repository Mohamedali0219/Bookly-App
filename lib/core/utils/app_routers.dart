import 'package:bookly_app/Features/home/peresention/views/book_details_view.dart';
import 'package:bookly_app/Features/home/peresention/views/home_view.dart';
import 'package:bookly_app/Features/search/peresentation/view/search_view.dart';
import 'package:bookly_app/Features/splash/peresentation/views/spalsh_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SpalshView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
