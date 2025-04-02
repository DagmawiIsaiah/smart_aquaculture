import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../utils/utils.dart';

class StatRangeCard extends StatelessWidget {
  const StatRangeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: grey30,
        ),
        color: white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            width: 50,
            height: 50,
            color: red,
            image: Svg('icons/SnowflakeBold.svg'),
          ),
          SizedBox(height: space16),
          Text(
            "Dagmawi Esayas",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "SA69813",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: black70),
          ),
        ],
      ),
    );
  }
}
