import 'package:flutter/material.dart';

typedef FutureVoidCallBack = Future<void> Function();

class AsyncNotifiedElevatedButton extends StatefulWidget {
  const AsyncNotifiedElevatedButton({
    super.key,
    required this.isActiveNotifier,
    required this.callback,
    required this.text,
  });

  final ValueNotifier<bool> isActiveNotifier;
  final FutureVoidCallBack callback;
  final String text;

  @override
  State<AsyncNotifiedElevatedButton> createState() =>
      _AsyncNotifiedElevatedButtonState();
}

class _AsyncNotifiedElevatedButtonState
    extends State<AsyncNotifiedElevatedButton> {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.isActiveNotifier,
      builder: (BuildContext context, bool value, Widget? child) {
        return ElevatedButton(
            onPressed: value && active ? _doCallBack : null,
            child: Text(
              widget.text,

            ));
      },
    );
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
