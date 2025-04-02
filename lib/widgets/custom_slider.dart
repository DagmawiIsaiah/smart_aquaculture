import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int _currentIndex = 0;

  void _onItemTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomSliderTabItem(
            index: _currentIndex,
            itemIndex: 0,
            label: 'Unread',
            onItemTap: _onItemTap,
          ),
          CustomSliderTabItem(
            index: _currentIndex,
            itemIndex: 1,
            label: 'Seen',
            onItemTap: _onItemTap,
          ),
          CustomSliderTabItem(
            index: _currentIndex,
            itemIndex: 2,
            label: 'All',
            onItemTap: _onItemTap,
          ),
        ],
      ),
    );
  }
}

class CustomSliderTabItem extends StatelessWidget {
  final int index;
  final int itemIndex;
  final String label;
  final Function onItemTap;

  const CustomSliderTabItem({
    super.key,
    required this.index,
    required this.itemIndex,
    required this.label,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onItemTap(itemIndex);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          color: (index == itemIndex) ? pBlue : white,
        ),
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: (index == itemIndex) ? white : black),
        ),
      ),
    );
  }
}
