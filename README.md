# DoubleTapExit Flutter Package

This Flutter package allows you to require a double back press to close an app, route, or screen. This is useful to prevent accidental exits and improve user experience.

## Usage

### Default

To use the `DoubleTap` widget with default settings, wrap your main widget with `DoubleTap` and provide a message to display when the back button is pressed for the first time.

```dart
import 'package:flutter/material.dart';
import 'package:your_package_name/double_tap.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoubleTap(
        message: "Press back again to close",
        child: Home(),
      ),
    );
  }
}


### Custom

import 'package:flutter/material.dart';
import 'package:your_package_name/double_tap.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoubleTap(
        message: "Press back again to close",
        child: Home(),
        // Optional style
        textStyle: TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
        background: Colors.red,
        backgroundRadius: 30,
      ),
    );
  }
}




### Example
import 'package:flutter/material.dart';
import 'package:your_package_name/double_tap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoubleTap(
        message: "Press back again to close",
        child: Scaffold(
          appBar: AppBar(title: Text("DoubleTap Example")),
          body: Center(child: Text("Press back button to test")),
        ),
        textStyle: TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
        background: Colors.red,
        backgroundRadius: 30,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text("Home Screen")),
    );
  }
}



## Parameters
• message: A string message that is shown to the user when they press the back button for the first time.
• child: The main widget to be displayed.
• waitForSecondBackPress: (Optional) An integer value representing the number of seconds to wait
  for the • • second back press. Default is 2 seconds.
• onFirstBackPress: (Optional) A callback function that is executed when the back button is pressed 
  for the first time.
• condition: (Optional) A boolean condition to check before showing the toast. Default is true.
• onConditionFail: (Optional) A callback function that is executed when the condition is false.
• textStyle: (Optional) A TextStyle object to customize the appearance of the message text.
  Default is white color and font size 14.
• background: (Optional) A Color object to set the background color of the toast.
  Default is semi-transparent black.
• backgroundRadius: (Optional) A double value to set the border radius of the toast background.
  Default is 20.

