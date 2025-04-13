import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/utils.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    super.key,
  });

  Future<String?> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: getUsername(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        final name = snapshot.data ?? 'Guest';
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: pBlue.withAlpha((255 * 0.05).toInt()),
          ),
          child: Padding(
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
                    Text("Hello, $name"),
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
          ),
        );
      },
    );
  }
}
