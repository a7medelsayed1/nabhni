import 'package:flutter/material.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/store/presentation/widgets/checkout_body.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const MainAppBar(
        title: 'تفاصيل الشحن',
        leadingWidget: BackButton(),
      ),
      body: CheckOutBodyWidget(),
    );
  }
}