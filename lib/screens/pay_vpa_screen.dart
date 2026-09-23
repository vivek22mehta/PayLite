import 'package:flutter/material.dart';
// import 'pay_vpa_screen.dart';

class PayVpaScreen extends StatelessWidget {
  const PayVpaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay to VPA'),
      ),

      body: const Center(
        child: Text(
          'Pay to VPA Screen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}