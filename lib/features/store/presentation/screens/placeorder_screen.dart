import 'package:flutter/material.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/store/presentation/widgets/place_order_widget.dart';

class PlaceorderScreen extends StatelessWidget {
  const PlaceorderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MainAppBar(
        title: 'المراجعه و الدفع',
        leadingWidget: BackButton(),
      ),
      body: PlaceOrderWidget(),
    );
  }
}