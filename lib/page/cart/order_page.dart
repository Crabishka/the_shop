import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/payment_type.dart';
import 'package:the_shop_app/model/profile.dart';
import 'package:the_shop_app/page/component/cart_component/future_payment_builder.dart';
import 'package:the_shop_app/page/component/cart_component/total_count_text.dart';
import 'package:the_shop_app/page/component/common/async_elevated_button.dart';
import 'package:the_shop_app/page/component/common/farm_add_bar.dart';
import 'package:the_shop_app/page/component/common/grey_divider.dart';
import 'package:the_shop_app/page/component/common/input_text_form_fields.dart';
import 'package:the_shop_app/page/component/profile_component/input_text_field.dart';
import 'package:the_shop_app/page/component/profile_component/phone_number_text_form_field.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/manager/app_provider_service.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/provider/state/profile_state_provider.dart';

import '../../data/utils.dart';

@RoutePage()
class OrderPage extends ConsumerStatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  ConsumerState<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends ConsumerState<OrderPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  ProfileInfo? profileInfo;
  final ValueNotifier<PaymentType?> _notifier = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    profileInfo = ref.read(profileProvider);
    _emailController.text = profileInfo?.email ?? '';
    _nameController.text = profileInfo?.firstName ?? '';
    _phoneController.text = '+7';
  }

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _nameController.dispose();
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paymentTypes = ref.read(paymentRepositoryProvider).getpayments();
    final cart = ref.watch(cartProvider);
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Оформление заказа',
        isBack: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverList.list(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Данные получателя',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  InputTextFormFieldForName(
                    nameController: _nameController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InputTextFormFieldForPhone(
                    phoneController: _phoneController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InputTextFormFieldForEmail(
                    emailController: _emailController,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    'Выбор адреса доставки',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    onPressed: () {},
                    child: const Text('ВЫБРАТЬ АДРЕС'),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    'Способы оплаты',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              FuturePaymentBuilder(
                  paymentTypes: paymentTypes, notifier: _notifier),
              SliverList.list(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TotalCountText(
                    value:
                        '${getFormatterString(double.parse(cart?.price ?? '0'))} ₽',
                    text: 'Товары',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TotalCountText(
                    value: '100 ₽',
                    text: 'Доставка',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 16,
                    child: GreyDivider(
                      endIndent: 0,
                      indent: 0,
                    ),
                  ),
                  TotalCountText(
                    value:
                        '${getFormatterString(double.parse(cart?.price ?? '0') + 100)} ₽',
                    text: 'Итог',
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: AsyncElevatedButton(
                      callback: () async {
                        var checkedPayment = _notifier.value;
                        if (_formKey.currentState!.validate() &&
                            checkedPayment != null) {
                          if (cart == null) {
                            showSnackBar(context, 'Корзина пуста.');
                            return;
                          }
                          await ref
                              .read(appStateManagerProvider)
                              .makeOrder(ref,
                                  cartInfo: cart,
                                  userName: _nameController.text,
                                  userPhone: _phoneController.text,
                                  userEmail: _emailController.text,
                                  paymentId: checkedPayment.id,
                                  paymentType: checkedPayment.type)
                              .then((value) {
                            AutoRouter.of(context).pop();
                          }).catchError((e) {

                            if (e == '400') {
                              showSnackBar(context, 'Корзина Пуста!');
                              return;
                            }
                            showSnackBar(context, 'Непредвиденная ошибка');
                          });
                        } else {
                          showSnackBar(context,
                              'Ошибка оформления формы! Проверьте корректность данных.');
                        }
                      },
                      text: 'ПЕРЕЙТИ К ОПЛАТЕ',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
