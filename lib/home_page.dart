import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'routes/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Home Page'),
                ElevatedButton(
                    onPressed: () {
                      context.router.pushNamed('/second-page/456');
                    },
                    child: const Text('Go to Second Page')),
                ElevatedButton(
                    onPressed: () {
                      context.router.pushNamed('/second-page/456/inner');
                    },
                    child: const Text('Go to Second Inner Page')),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
