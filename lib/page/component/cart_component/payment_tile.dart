import 'package:flutter/material.dart';
import 'package:the_shop_app/model/payment_type.dart';

class PaymentTile extends StatelessWidget {
  const PaymentTile({
    super.key,
    required this.payment,
    this.isChecked = false,
  });

  final PaymentType payment;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isChecked ? 1 : 0.5,
      child: ListTile(
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 1),
        ),
        contentPadding: const EdgeInsets.all(16),
        trailing: isChecked
            ? const Icon(Icons.check)
            : const SizedBox(
                height: 24,
                width: 24,
              ),
        title: Text(
          payment.title,
          style: const TextStyle(fontSize: 16),
        ),
        subtitle: Row(
          children: [
            Expanded(child: Image.network(payment.icon)),
            const Spacer(),
            Expanded(
              flex: 7,
              child: Text(
                payment.description,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
