import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A widget that displays a digital clock.
class DigitalClock extends StatelessWidget {
  const DigitalClock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: StreamBuilder<DateTime>(
        stream:
            Stream.periodic(const Duration(seconds: 1), (_) => DateTime.now()),
        builder: (context, snapshot) {
          String timeString =
              DateFormat.Hms().format(snapshot.data ?? DateTime.now());
          return Text(
            timeString,
            style: const TextStyle(fontSize: 36),
          );
        },
      ),
    );
  }
}
