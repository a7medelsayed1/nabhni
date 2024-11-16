import 'package:flutter/material.dart';
import 'package:nabhni/features/Home/presentation/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(),
    );
  }
}