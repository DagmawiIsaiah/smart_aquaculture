import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({
    super.key,
  });

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: black70.withAlpha((255 * 0.05).toInt()),
              blurRadius: 32,
              offset: const Offset(0, 0),
            ),
          ],
          color: white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/image1.jpg",
              // width: 200,
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Monitoring",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: space24),
                  SideNavItem.envStats(
                    currentIndex: _currentIndex,
                    onTap: _onItemTapped,
                  ),
                  SideNavItem.temperature(
                    currentIndex: _currentIndex,
                    onTap: _onItemTapped,
                  ),
                  SideNavItem.ph(
                    currentIndex: _currentIndex,
                    onTap: _onItemTapped,
                  ),
                  SideNavItem.turbidity(
                    currentIndex: _currentIndex,
                    onTap: _onItemTapped,
                  ),
                  SideNavItem.feeding(
                    currentIndex: _currentIndex,
                    onTap: _onItemTapped,
                  ),
                  SizedBox(height: space40),
                  Text(
                    "Notification",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: space24),
                  SideNavItem.notification(
                    currentIndex: _currentIndex,
                    onTap: _onItemTapped,
                  ),
                  SideNavItem.diseasePrediction(
                    currentIndex: _currentIndex,
                    onTap: _onItemTapped,
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.02),
              child: UserCard(),
            ),
          ],
        ),
      ),
    );
  }
}
