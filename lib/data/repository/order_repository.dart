import 'package:dio/dio.dart';
import 'package:the_shop_app/data/client/category_client.dart';
import 'package:the_shop_app/data/client/order_client.dart';
import 'package:the_shop_app/data/client/payment_client.dart';
import 'package:the_shop_app/data/dto/request/create_order_dto.dart';
import 'package:the_shop_app/model/cart_info.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/model/payment_type.dart';

class OrderRepository {
  final OrderClient _api;

  OrderRepository(this._api);

  Future<void> createOrder({
    required CartInfo cartInfo,
    required String userName,
    required String userPhone,
    required String userEmail,
    String deliveryId = '1',
    String deliveryType = 'pickup',
    required String paymentId,
    required String paymentType,
  }) async {
    try {
      var products = cartInfo.products.entries
          .map((entry) => ProductIdCount(
              productId: entry.key.toString(), count: entry.value.count))
          .toList();
      var dto = CreateOrderDto(
          products: products,
          userName: userName,
          userPhone: userPhone,
          userEmail: userEmail,
          deliveryId: deliveryId,
          deliveryType: deliveryType,
          paymentId: paymentId,
          paymentType: paymentType);
      return await _api.orderOrder(dto);
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }
}
