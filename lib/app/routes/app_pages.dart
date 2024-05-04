import 'package:get/get.dart';
import 'package:maenbal/app/modules/highlights/bindings/highlights_binding.dart';
import 'package:maenbal/app/modules/highlights/views/highlights_view.dart';
import 'package:maenbal/app/modules/matches/bindings/matches_binding.dart';
import 'package:maenbal/app/modules/matches/views/matches_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.MATCHES,
      page: () => const MatchesView(),
      binding: MatchesBinding(),
    ),
    GetPage(
      name: _Paths.HIGHLIGHTS,
      page: () => const HighlightsView(),
      binding: HighlightsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
