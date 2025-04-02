import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../utils/utils.dart';

enum StatusCardType {
  temperature,
  turbidity,
  ph,
}

enum EnvStatusState {
  good,
  warning,
  critical,
}

EnvStatusState getState({required int value, required StatusCardType type}) {
  if (type == StatusCardType.temperature) {
    if (value >= 25 && value <= 30) {
      return EnvStatusState.good;
    } else if ((value > 30 && value <= 35) || (value >= 20 && value < 25)) {
      return EnvStatusState.warning;
    } else {
      return EnvStatusState.critical;
    }
  }
  if (type == StatusCardType.turbidity) {
    if (value <= 300) {
      return EnvStatusState.good;
    } else if (value > 30 && value <= 500) {
      return EnvStatusState.warning;
    } else {
      return EnvStatusState.critical;
    }
  }

  if (value == 7) {
    return EnvStatusState.good;
  } else if (value == 6 || value == 8) {
    return EnvStatusState.warning;
  } else {
    return EnvStatusState.critical;
  }
}

class StatusCard extends StatelessWidget {
  final String value;
  final String label;
  final EnvStatusState state;
  final StatusCardType type;

  const StatusCard({
    super.key,
    required this.value,
    required this.label,
    required this.type,
    required this.state,
  });

  factory StatusCard.temperature(int temp) {
    return StatusCard(
      value: temp.toString(),
      label: "Temperature",
      type: StatusCardType.temperature,
      state: getState(value: temp, type: StatusCardType.temperature),
    );
  }

  factory StatusCard.turbidity(int value) {
    return StatusCard(
      value: value.toString(),
      label: "Turbidity",
      type: StatusCardType.turbidity,
      state: getState(value: value, type: StatusCardType.turbidity),
    );
  }
  factory StatusCard.ph(int ph) {
    return StatusCard(
      value: ph.toString(),
      label: "pH",
      type: StatusCardType.ph,
      state: getState(value: ph, type: StatusCardType.ph),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: white.withAlpha((255 * 0.8).toInt()),
        ),
        child: Row(
          children: [
            Image(
              width: 40,
              height: 40,
              color: (state == EnvStatusState.good)
                  ? green
                  : (state == EnvStatusState.warning)
                      ? orange
                      : red,
              image: (type == StatusCardType.temperature)
                  ? Svg('icons/ThermometerSimpleBold.svg')
                  : (type == StatusCardType.turbidity)
                      ? Svg('icons/SunBold.svg')
                      : Svg('icons/ScalesBold.svg'),
            ),
            SizedBox(width: space16),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (type == StatusCardType.temperature)
                    ? Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: value,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: 'o',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                fontFeatures: [
                                  FontFeature.superscripts(),
                                ],
                              ),
                            ),
                            TextSpan(
                              text: 'C',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      )
                    : (type == StatusCardType.turbidity)
                        ? Text(
                            "$value NTU",
                            style: Theme.of(context).textTheme.titleLarge,
                          )
                        : Text(
                            value,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: black70),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
