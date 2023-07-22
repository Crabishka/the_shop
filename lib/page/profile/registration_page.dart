import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/input_text_field.dart';

@RoutePage()
class RegistrationPage extends ConsumerStatefulWidget {
  const RegistrationPage(this.email, {Key? key}) : super(key: key);
  final String email;

  @override
  ConsumerState<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends ConsumerState<RegistrationPage> {
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    _emailController.text = widget.email;
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  // можно было сделать через Form
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FarmAppBar(title: 'Регистрация'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            InputTextField(
              textHint: 'Населенный пункт',
              controller: _cityController,
            ),
            const SizedBox(
              height: 16,
            ),
            InputTextField(
              textHint: 'Иванов Иван',
              controller: _nameController,
            ),
            const SizedBox(
              height: 16,
            ),
            InputTextField(
              textHint: '+7 (000) 000-00-00',
              controller: _phoneController,
            ),
            const SizedBox(
              height: 16,
            ),
            InputTextField(
                textHint: 'email@mail.ru',
                controller: _emailController),

          ],
        ),
      ),
    );
  }
}
