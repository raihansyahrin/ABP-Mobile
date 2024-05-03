import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/data/bottomnavbar_model.dart';
import 'package:maenbal/app/modules/highlight/views/highlight_view.dart';
import 'package:maenbal/app/modules/home/views/home_view.dart';
import 'package:maenbal/app/modules/news/views/news_view.dart';
import 'package:maenbal/app/modules/profile/views/profile_view.dart';
import 'package:maenbal/app/modules/schedule/views/schedule_view.dart';
import 'package:maenbal/app/modules/score/views/score_view.dart';
import 'package:maenbal/app/shared/widgets/bottomnavbar_widget.dart';

import '../controllers/main_controller.dart';

// ignore: must_be_immutable
class MainView extends GetView<MainController> {
  var selectedIndex = 0.obs;

  MainView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomeView(),
                NewsView(),
                ScoreView(),
                ScheduleView(),
                HighlightView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}
