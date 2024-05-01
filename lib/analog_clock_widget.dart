import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

/// A widget that displays an analog clock.
class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnalogClockState createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  late DateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: CustomPaint(
          painter: AnalogClockPainter(dateTime: _currentTime),
        ),
      ),
    );
  }
}

/// A custom painter that draws an analog clock.
class AnalogClockPainter extends CustomPainter {
  final DateTime dateTime;
  final double hourHandLength = 50;
  final double minuteHandLength = 80;
  final double secondHandLength = 90;
  final double markerPadding = 15.0;
  final TextStyle textStyle = const TextStyle(
      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);

  AnalogClockPainter({required this.dateTime});

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    final markerOffset = size.width / 2 - markerPadding;
    final numbers = ['3', '12', '9', '6'];
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (var i = 0; i < 4; i++) {
      double x = centerX + cos(i * pi / 2) * markerOffset;
      double y = centerY - sin(i * pi / 2) * markerOffset;

      textPainter.text = TextSpan(text: numbers[i], style: textStyle);
      textPainter.layout();
      textPainter.paint(canvas,
          Offset(x - textPainter.width / 2, y - textPainter.height / 2));
    }

    // Draw hour hand
    double hour = (dateTime.hour % 12 + dateTime.minute / 60) * 30;
    double hourX = centerX + hourHandLength * 0.5 * cos((90 - hour) * pi / 180);
    double hourY = centerY - hourHandLength * 0.5 * sin((90 - hour) * pi / 180);
    canvas.drawLine(center, Offset(hourX, hourY), Paint()..strokeWidth = 5);

    // Draw minute hand
    double minute = dateTime.minute * 6;
    double minuteX =
        centerX + minuteHandLength * 0.7 * cos((90 - minute) * pi / 180);
    double minuteY =
        centerY - minuteHandLength * 0.7 * sin((90 - minute) * pi / 180);
    canvas.drawLine(center, Offset(minuteX, minuteY), Paint()..strokeWidth = 3);

    // Draw second hand
    double second = dateTime.second * 6;
    double secondX = centerX + secondHandLength * cos((90 - second) * pi / 180);
    double secondY = centerY - secondHandLength * sin((90 - second) * pi / 180);
    canvas.drawLine(
        center,
        Offset(secondX, secondY),
        Paint()
          ..strokeWidth = 2
          ..color = Colors.red);

    // Draw center point
    canvas.drawCircle(center, 6, Paint()..color = Colors.black);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
