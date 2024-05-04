import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/shared/widgets/appbar_widget.dart';
import 'package:maenbal/app/shared/widgets/matchcard_widget.dart';
import 'package:svg_flutter/svg.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3F4F7),
        appBar: CustomAppBar(
          title: 'LiveScore',
          isLeading: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              fit: BoxFit.fitWidth,
              'assets/uefa.png',
            ),
          ),
          action: [
            SvgPicture.asset(
              'assets/notif.svg',
            ),
            const SizedBox(width: 20)
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next Matches',
                      style: semiBoldText16,
                    ),
                    InkWell(
                      child: Text(
                        'See All',
                        style: mediumText12.copyWith(
                          color: const Color(0xFF54B9FC),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MatchCard(isLinear: true),
                const SizedBox(height: 16),
                MatchCard(isLinear: false),
                const SizedBox(height: 16),
                MatchCard(isLinear: false),
              ],
            ),
          ),
        ));
  }
}
