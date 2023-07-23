import 'package:the_shop_app/data/client/category_client.dart';
import 'package:the_shop_app/data/client/payment_client.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/model/payment_type.dart';

class PaymentRepository {
  final PaymentClient _api;

  PaymentRepository(this._api);

  Future<List<PaymentType>> getpayments() {
    return _api.payments();
  }
}
