import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/shared/widgets/scorecard_widget.dart';

class ScoreView extends StatelessWidget {
  ScoreView({super.key});

  final List<dynamic> TeamA = [
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
  ];

  final List<dynamic> TeamB = [
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
  ];

  final List<dynamic> Score = [
    "2-2",
    "2-2",
    "2-2",
    "2-2",
    "2-2",
    "2-2",
  ];

  final List<dynamic> ScorerA = [
    "De Jong 66’",
    "De Jong 66’",
    "De Jong 66’",
    "De Jong 66’",
    "De Jong 66’",
    "De Jong 66’",
  ];

  final List<dynamic> ScorerB = [
    "Alvarez 21’",
    "Alvarez 21’",
    "Alvarez 21’",
    "Alvarez 21’",
    "Alvarez 21’",
    "Alvarez 21’",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Group phase",
                style: semiBoldText12.copyWith(
                  color: Color(0xff3498DB),
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.circle,
                size: 6,
                color: Color(0xff3498DB),
              ),
              SizedBox(width: 10),
              Text(
                "Match 1 of 6",
                style: semiBoldText12.copyWith(
                  color: Color(0xff3498DB),
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.chevron_right_outlined,
                size: 20,
                color: Color(0xff000000),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              children: List.generate(Score.length, (index) {
                return const ScoreCard();
              }),
            ),
          ),
        ],
      ),
    );
  }
}
