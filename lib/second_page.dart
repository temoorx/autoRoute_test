import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SecondPage extends StatelessWidget {
  const SecondPage({super.key, @PathParam('id') this.id = 'default'});
  final String id;

  @override
  Widget build(BuildContext context) {
    debugPrint('id: $id');
    return const Scaffold(
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}
