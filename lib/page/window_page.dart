import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WindowPage extends StatefulWidget {
  const WindowPage({Key? key}) : super(key: key);

  @override
  State<WindowPage> createState() => _WindowPageState();
}

class _WindowPageState extends State<WindowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.red,
        child: Container(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
