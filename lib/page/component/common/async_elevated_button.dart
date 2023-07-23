import 'package:flutter/material.dart';

typedef FutureVoidCallBack = Future<void> Function();

class AsyncElevatedButton extends StatefulWidget {
  const AsyncElevatedButton({
    super.key,
    required this.callback,
    required this.text,
  });

  final FutureVoidCallBack callback;
  final String text;

  @override
  State<AsyncElevatedButton> createState() => _AsyncElevatedButtonState();
}

class _AsyncElevatedButtonState extends State<AsyncElevatedButton> {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: active ? _doCallBack : null,
        child: Text(
          widget.text,
        ));
  }

  Future<void> _doCallBack() async {
    setState(() {
      active = false;
    });
    await widget.callback();
    setState(() {
      active = true;
    });
  }
}
