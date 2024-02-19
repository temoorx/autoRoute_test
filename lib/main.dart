import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'routes/app_router.dart';

void main() {
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<AppRouter>();
    return MaterialApp.router(
      title: 'Auto Route Example',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      routerConfig: appRouter.config(),
    );
  }
}
