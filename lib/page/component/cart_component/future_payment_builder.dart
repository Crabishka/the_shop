import 'package:flutter/material.dart';
import 'package:the_shop_app/model/payment_type.dart';
import 'package:the_shop_app/page/component/cart_component/payment_tile.dart';

class FuturePaymentBuilder extends StatelessWidget {
  const FuturePaymentBuilder({
    super.key,
    required this.paymentTypes,
    required ValueNotifier<PaymentType?> notifier,
  }) : _notifier = notifier;

  final Future<List<PaymentType>> paymentTypes;
  final ValueNotifier<PaymentType?> _notifier;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: paymentTypes,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
        var payments = snapshot.data;
        if (snapshot.hasError || payments == null) {
          return const SliverToBoxAdapter(
              child: Center(child: Text('Ошибка загрузки данных')));
        }
        return ValueListenableBuilder(
          valueListenable: _notifier,
          builder: (context, value, child) {
            return SliverList.separated(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                var payment = payments[index];
                var checked = payment.id == value?.id;
                return InkWell(
                  onTap: () {
                    _notifier.value = payment;
                  },
                  child: PaymentTile(
                    payment: payment,
                    isChecked: checked,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 16,
                );
              },
            );
          },
        );
      },
    );
  }
}
