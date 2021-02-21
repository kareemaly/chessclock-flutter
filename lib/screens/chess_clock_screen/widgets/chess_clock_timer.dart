import 'package:flutter/material.dart';

class ChessClockTimer extends StatelessWidget {
  final bool isReversed;
  final bool isTicking;
  final bool isTimeUp;

  final Duration availableTime;

  const ChessClockTimer({
    Key key,
    this.isReversed = false,
    this.isTicking = false,
    this.isTimeUp = false,
    @required this.availableTime,
  }) : super(key: key);

  Color _getColor() {
    if (isTicking) {
      return Colors.orange;
    }

    if (isTimeUp) {
      return Colors.red;
    }

    return Colors.black.withAlpha(30);
  }

  String _getAvailabeTimeText() {
    return availableTime.toString().substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _getColor(),
      child: Center(
        child: RotatedBox(
          quarterTurns: isReversed ? 2 : 0,
          child: Text(
            _getAvailabeTimeText(),
            style: TextStyle(
              fontSize: 70,
            ),
          ),
        ),
      ),
    );
  }
}
