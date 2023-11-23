import 'package:flutter/material.dart';

class RestartWidget extends StatefulWidget {
  const RestartWidget({super.key, required this.child});

  final Widget child;

  static restartApp(BuildContext context, child) {
    context.findAncestorStateOfType<RestartWidgetState>()!.restartApp(child);
  }

  @override
  RestartWidgetState createState() => RestartWidgetState();
}

class RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  Widget? currentChild;

  @override
  void initState() {
    currentChild = widget.child;
    super.initState();
  }

  void restartApp(Widget child) {
    setState(() {
      currentChild = child;
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: currentChild ?? const SizedBox(),
    );
  }
}