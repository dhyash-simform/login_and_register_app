import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_register_app/constant/app_theme.dart';
import 'package:login_register_app/pages/login_page.dart';
import 'package:login_register_app/pages/register_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login and Register UI',
      theme: AppTheme.themeData,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage()
      },
    );
  }
}
