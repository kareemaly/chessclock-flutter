import 'package:flutter/material.dart';

import 'widgets/chess_clock_timer.dart';

class ChessClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ChessClockTimer(
              isReversed: true,
              isTicking: true,
              availableTime: Duration(
                minutes: 5,
                seconds: 10,
              ),
            ),
          ),
          Expanded(
            child: ChessClockTimer(
              availableTime: Duration(
                minutes: 5,
                seconds: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
