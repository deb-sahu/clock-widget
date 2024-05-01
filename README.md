## Features

- Display an analog clock and a digital clock in UI.
- Analog clock includes markers for 12, 3, 6, and 9 positions.
- Digital clock is updated in real-time using a stream service.

## Demo

<img src="https://github.com/deb-sahu/clock_widget/assets/117360930/84544108-abfd-4973-b421-fda1c2b11a60" width="200">


## Usage

### Installation

Add `clock_widget` to your `pubspec.yaml` file:

```yaml
dependencies:
  clock_widget: ^0.0.2 # Use the latest version
```

### Import

```dart
import 'package:flutter/material.dart';
import 'package:clock_widget/clock_widget.dart';
```

### Clockwidget implementation

To show the clock widgets, use the `ClockWidget()` method:

```dart
// Display an analog clock
ClockWidget(
  clockType: ClockType.analog,
  // Prop to customize the background color
  bgColor: Colors.white,
),

// Display a digital clock
ClockWidget(
  clockType: ClockType.digital,
  // Prop to customize the background color
  bgColor: Colors.white,
),
```
