import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';

@RoutePage()
class CatalogPage extends ConsumerWidget {
  const CatalogPage({required this.categoryId, Key? key}) : super(key: key);
  final int categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Каталог',
      ),
    );
  }
}
