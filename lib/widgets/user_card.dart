import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/utils.dart';

class UserCard extends StatelessWidget {
  const UserCard({
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
          child: Row(
            children: [
              // CircleAvatar(
              //   radius: 24,
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(1000),
              //     child: Image.asset(
              //       "images/image1.jpg",
              //       height: 48,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              // SizedBox(width: space12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    // Text(
                    //   "SA69813",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .labelMedium!
                    //       .copyWith(color: black70),
                    // ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: white,
                  child: Image(
                    width: 32,
                    height: 32,
                    color: red,
                    image: Svg('icons/SignOut.svg'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
