import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FarmAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FarmAppBar({
    super.key,
    required this.title,
    this.isBack = false,
  });

  final String title;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: isBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                AutoRouter.of(context).pop();
              },
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
