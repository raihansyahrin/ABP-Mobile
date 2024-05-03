import 'package:get/get.dart';
import 'package:maenbal/app/modules/highlight/controllers/highlight_controller.dart';
import 'package:maenbal/app/modules/home/controllers/home_controller.dart';
import 'package:maenbal/app/modules/news/controllers/news_controller.dart';
import 'package:maenbal/app/modules/profile/controllers/profile_controller.dart';
import 'package:maenbal/app/modules/score/controllers/score_controller.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<NewsController>(
      () => NewsController(),
    );
    Get.lazyPut<ScoreController>(
      () => ScoreController(),
    );
    Get.lazyPut<HighlightController>(
      () => HighlightController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
