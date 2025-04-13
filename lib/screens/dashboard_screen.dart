import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavBar(),
          Expanded(
            flex: 5,
            child: Column(
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
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage("images/image1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Environment Stats",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              "Overall real time condition of aquatic environment",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: black70),
                            ),
                            SizedBox(height: space16),
                            Row(
                              children: [
                                StatusCard.temperature(29),
                                SizedBox(width: space16),
                                StatusCard.ph(7),
                                SizedBox(width: space16),
                                StatusCard.turbidity(500),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: space24),
                      Row(
                        children: [
                          Expanded(child: StatRangeCard()),
                          SizedBox(width: space12),
                          Expanded(child: StatRangeCard()),
                          SizedBox(width: space12),
                          Expanded(child: StatRangeCard()),
                        ],
                      ),
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
          ),
        ],
      ),
    );
  }
}
