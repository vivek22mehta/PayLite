import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/sign_in_page.dart';

void main() {
  runApp(const PayLiteApp());
}

class PayLiteApp extends StatelessWidget {
  const PayLiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayLite',
      home: const SignInPage(),
    );
  }
}