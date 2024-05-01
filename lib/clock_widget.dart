library clock_widget;

import 'package:clock_widget/analog_clock_widget.dart';
import 'package:clock_widget/digital_clock_widget.dart';
import 'package:flutter/material.dart';

/// Enum to specify the type of clock to display.
enum ClockType { analog, digital }

/// A widget that displays either an analog or digital clock.
class ClockWidget extends StatelessWidget {
  /// The type of clock to display.
  final ClockType clockType;

  /// The background color of the clock.
  final Color bgColor;

  const ClockWidget(
      {super.key,
      this.clockType = ClockType.digital,
      this.bgColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: clockType == ClockType.analog
          ? const AnalogClock()
          : const DigitalClock(),
    );
  }
}
