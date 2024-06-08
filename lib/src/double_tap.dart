



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'toast.dart';

/// DoubleBack, wrap a widget to use it
/// child : widget
/// message : to show on toast
/// waitToSecondPressed (optional) if you want to wait longer
/// condition and conditionFail, if you want show at spesific condition
class DoubleTap extends StatefulWidget {
  final Widget child;
  final String message;
  final int waitForSecondBackPress;
  final Function? onFirstBackPress;
  final bool condition;
  final VoidCallback? onConditionFail;
  final TextStyle textStyle;
  final Color background;
  final double backgroundRadius;

  /// DoubleBack, wrap a widget to use it
  const DoubleTap({
    super.key,
    required this.child,
    this.message = "Press back again to exit",
    this.waitForSecondBackPress = 2,
    this.onFirstBackPress,
    this.condition = true,
    this.onConditionFail,
    this.textStyle = const TextStyle(fontSize: 14, color: Colors.white),
    this.background = const Color(0xAA000000),
    this.backgroundRadius = 20,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DoubleTapState createState() => _DoubleTapState();
}

class _DoubleTapState extends State<DoubleTap> {
  bool tapped = false;
  bool get _isAndroid => Theme.of(context).platform == TargetPlatform.android;

  @override
  Widget build(BuildContext context) {
    if (_isAndroid) {
      return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
         
          },
          
    
      
        child: widget.child,
      );
    } else {
      return widget.child;
    }
  }

   DateTime? currentBackPressTime ;
  void popScreen(int waitForSecondPress) {
    DateTime now = DateTime.now();

    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) >  Duration(seconds: waitForSecondPress)) {
      currentBackPressTime = now;
          Toast.show(
                  widget.message,
                  context,
                  duration: widget.waitForSecondBackPress,
                  gravity: Toast.bottom,
                  textStyle: widget.textStyle,
                  backgroundColor: widget.background,
                  backgroundRadius: widget.backgroundRadius,
                );


      return;
    }
    SystemNavigator.pop();
  

   
    // // canPop.value = true;
  }
}



