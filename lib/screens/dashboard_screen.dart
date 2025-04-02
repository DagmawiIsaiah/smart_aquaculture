import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

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
          // SideNavBar(),
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

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.02,
        vertical: 12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Dashboard"),
          Spacer(),
          Row(
            children: [
              Text("Hello, Dagmawi Esayas"),
              SizedBox(width: space12),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: pBlue.withAlpha((255 * 0.05).toInt()),
                  child: Image(
                    width: 32,
                    height: 32,
                    color: black,
                    image: Svg('icons/Bell.svg'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
