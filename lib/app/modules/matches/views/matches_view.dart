import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/shared/widgets/scorecard_widget.dart';
import 'package:maenbal/app/shared/widgets/scoreview_widget.dart';

import '../controllers/matches_controller.dart';

class MatchesView extends GetView<MatchesController> {
  const MatchesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MatchesView'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ScoreView(),
              //
              ScoreView(),
              //
              ScoreView(), //
              ScoreView(), //
              ScoreView(),
            ],
          ),
        ));
  }
}
