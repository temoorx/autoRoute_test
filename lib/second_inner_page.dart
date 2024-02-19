import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()

class SecondInnerPage extends StatelessWidget {
  const SecondInnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Second Inner Page'),
      ),
    );
  }
}
