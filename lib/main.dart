import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:selloutapp/config/routes/my_providers.dart';
import 'package:selloutapp/config/routes/my_routies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: myProviders,
      child: MaterialApp(
        title: 'Sellout App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(body: Center(child: Text('Init'))),
        routes: myRoutes,
      ),
    );
  }
}
