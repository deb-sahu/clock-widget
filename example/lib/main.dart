import 'package:flutter/material.dart';
import 'package:clock_widget/clock_widget.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Top Snackbar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clock Widget Example'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClockWidget(
              clockType: ClockType.analog,
              bgColor: Colors.white,
            ),
            SizedBox(height: 20),
            ClockWidget(
              clockType: ClockType.digital,
              bgColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
