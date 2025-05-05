import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class EnviromentalStats extends StatefulWidget {
  const EnviromentalStats({
    super.key,
  });

  @override
  State<EnviromentalStats> createState() => _EnviromentalStatsState();
}

class _EnviromentalStatsState extends State<EnviromentalStats> {
  final _channel = WebSocketChannel.connect(
    Uri.parse("ws://127.0.0.1:8000/ws/stats"),
  );

  double temp = 0, ph = 0, turbidity = 0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _channel.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = jsonDecode(snapshot.data);
          temp = data['temp'];
          ph = data['ph'];
          turbidity = data['turbidity'];
        }
        return Container(
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
                "Enviromental Stats",
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
                  StatusCard.temperature(int.parse(temp.toString())),
                  SizedBox(width: space16),
                  StatusCard.ph(int.parse(ph.toString())),
                  SizedBox(width: space16),
                  StatusCard.turbidity(int.parse(turbidity.toString())),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
