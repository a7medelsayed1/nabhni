import 'package:flutter/material.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/store/presentation/widgets/placed_order_succsessfully.dart';

class OrderPlacedSuccessfully extends StatelessWidget {
  const OrderPlacedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(
      ),
      body: PlacedOrderWidget(),
    );
  }
}