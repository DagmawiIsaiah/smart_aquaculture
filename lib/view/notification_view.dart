import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          DashboardHeader(),
          Container(
            color: pBlue.withAlpha((255 * 0.05).toInt()),
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.02,
              vertical: 24,
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                EnviromentalStats(),
                SizedBox(height: space24),
                CustomSlider(),
                SizedBox(height: space24),
                Column(
                  children: [
                    NotificationCard.notification(
                      title: "Water temperature over 30 degress",
                      detail:
                          "Aquatic enviroment temperature in warning region make shade or replace water with new cold water to prevent the fish from dying.",
                      date: '13 Nov, 2024',
                    ),
                    SizedBox(height: space16),
                    NotificationCard.diseasePrediction(
                      title: "Water temperature over 30 degress",
                      detail:
                          "Aquatic enviroment temperature in warning region make shade or replace water with new cold water to prevent the fish from dying.",
                      date: '13 Nov, 2024',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RangeView extends StatelessWidget {
  const RangeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: StatRangeCard()),
        SizedBox(width: space12),
        Expanded(child: StatRangeCard()),
        SizedBox(width: space12),
        Expanded(child: StatRangeCard()),
      ],
    );
  }
}
