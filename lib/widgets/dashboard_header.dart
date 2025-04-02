import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../utils/utils.dart';

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
