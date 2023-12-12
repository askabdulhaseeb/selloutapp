import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'config/routes/my_providers.dart';
import 'config/routes/my_routies.dart';
import 'config/themes/app_theme.dart';
import 'features/auth/signin/presentation/screens/signin_screen.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
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
        theme: AppThemes.light,
        home: const SigninScreen(),
        routes: myRoutes,
      ),
    );
  }
}
