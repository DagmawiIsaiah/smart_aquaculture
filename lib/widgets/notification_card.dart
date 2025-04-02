import 'package:flutter/material.dart';

import '../utils/utils.dart';

enum NotificationType {
  warning,
  critical,
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String detail;
  final String date;
  final NotificationType type;

  const NotificationCard({
    super.key,
    required this.title,
    required this.detail,
    required this.date,
    required this.type,
  });

  factory NotificationCard.notification(
      {required String title, required String detail, required String date}) {
    return NotificationCard(
      title: title,
      detail: detail,
      date: date,
      type: NotificationType.warning,
    );
  }

  factory NotificationCard.diseasePrediction(
      {required String title, required String detail, required String date}) {
    return NotificationCard(
      title: title,
      detail: detail,
      date: date,
      type: NotificationType.critical,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border(
          left: BorderSide(
            color: (type == NotificationType.warning) ? pBlue : red,
            width: 5,
          ),
        ),
        color: white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(width: space16),
              Text(
                "13 Nov, 2024",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: black70),
              ),
              Spacer(),
              CircleAvatar(
                radius: 4,
                backgroundColor:
                    (type == NotificationType.warning) ? pBlue : red,
              ),
            ],
          ),
          SizedBox(height: space8),
          Text(
            detail,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: black70),
          ),
        ],
      ),
    );
  }
}
