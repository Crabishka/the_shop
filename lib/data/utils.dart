import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:the_shop_app/router/app_router.dart';

String getFormatterString(double value) {
  if (value == 0) return '';
  return NumberFormat("#,###").format(value).replaceAll(',', ' ');
}


void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}


Future<dynamic> buildErrorShowModalBottomSheet(
    BuildContext context, String text) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 200,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 52,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.navigate(const AuthRoute());
                  },
                  child: const Text('ВХОД / ЗАРЕГИСТРИРОВАТЬСЯ'),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}