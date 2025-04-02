import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../utils/utils.dart';

class SideNavItem extends StatelessWidget {
  final int currentIndex;
  final int itemIndex;
  final String label;
  final String imageURL;
  final Function onItemTapped;

  const SideNavItem({
    super.key,
    required this.currentIndex,
    required this.itemIndex,
    required this.label,
    required this.imageURL, required this.onItemTapped,
  });

  factory SideNavItem.envStats({
    required int currentIndex,
    required Function onTap,
  }) {
    return SideNavItem(
      currentIndex: currentIndex,
      itemIndex: 0,
      label: "Environment Stats",
      imageURL: 'icons/ChartLine.svg', onItemTapped: onTap,
    );
  }

  factory SideNavItem.temperature({
    required int currentIndex,
    required Function onTap,
  }) {
    return SideNavItem(
      currentIndex: currentIndex,
      itemIndex: 1,
      label: "Temperature",
      imageURL: 'icons/ThermometerSimple.svg', onItemTapped: onTap,
    );
  }

  factory SideNavItem.ph({
    required int currentIndex,
    required Function onTap,
  }) {
    return SideNavItem(
      currentIndex: currentIndex,
      itemIndex: 2,
      label: "PH Level",
      imageURL: 'icons/Scales.svg', onItemTapped: onTap,
    );
  }

  factory SideNavItem.turbidity({
    required int currentIndex,
    required Function onTap,
  }) {
    return SideNavItem(
      currentIndex: currentIndex,
      itemIndex: 3,
      label: "Turbidity",
      imageURL: 'icons/Sun.svg', onItemTapped: onTap,
    );
  }

  factory SideNavItem.feeding({
    required int currentIndex,
    required Function onTap,
  }) {
    return SideNavItem(
      currentIndex: currentIndex,
      itemIndex: 4,
      label: "Feeding",
      imageURL: 'icons/Fish.svg', onItemTapped: onTap,
    );
  }

  factory SideNavItem.notification({
    required int currentIndex,
    required Function onTap,
  }) {
    return SideNavItem(
      currentIndex: currentIndex,
      itemIndex: 5,
      label: "Notification",
      imageURL: 'icons/Bell.svg', onItemTapped: onTap,
    );
  }

  factory SideNavItem.diseasePrediction({
    required int currentIndex,
    required Function onTap,
  }) {
    return SideNavItem(
      currentIndex: currentIndex,
      itemIndex: 6,
      label: "Disease Prediction",
      imageURL: 'icons/Asclepius.svg', onItemTapped: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onItemTapped(itemIndex);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: (currentIndex == itemIndex)
              ? pBlue.withAlpha((255 * 0.05).toInt())
              : null,
        ),
        child: Row(
          children: [
            Image(
              width: 32,
              height: 32,
              color: (currentIndex == itemIndex) ? pBlue : black70,
              image: Svg(imageURL),
            ),
            SizedBox(width: (currentIndex == itemIndex) ? space16 : space8),
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: (currentIndex == itemIndex) ? pBlue : black70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
