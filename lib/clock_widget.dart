library clock_widget;

import 'package:clock_widget/digital_clock_widget.dart';
import 'package:flutter/material.dart';

class ClockWidget extends StatelessWidget {
  /// The background color of the widget.
  final Color bgColor;

  /// A widget that displays a digital clock.
  const ClockWidget({super.key, this.bgColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: const DigitalClock(),
    );
  }
}
