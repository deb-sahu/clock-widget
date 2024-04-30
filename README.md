## Features

- Display a digital clock in UI.
- Not affected by change in context, it's a stream service.

## Usage

### Installation

Add `clock_widget` to your `pubspec.yaml` file:

```yaml
dependencies:
  clock_widget: ^0.0.1 # Use the latest version
```

### Import

```dart
import 'package:flutter/material.dart';
import 'package:clock_widget/clock_widget.dart';
```

### Clockwidget implementation

To show the digital clock widget, use the `ClockWidget()` method:

```dart
ClockWidget(
  // Prop to customise the background color
  bgColor: Colors.white,
),
```