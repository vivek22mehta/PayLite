
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

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
      home: const HomeScreen(),
    );
  }
}



// The following code is commented out because it has been replaced by the HomeScreen widget in the main.dart file. The HomeScreen widget 
//is now responsible for displaying the app's main content, while the PayLiteApp widget serves as the entry point of the application.  

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const PayLiteApp());
// }

// class PayLiteApp extends StatelessWidget {
//   const PayLiteApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'PayLite',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('PayLite'),
//         ),
//         body: const Center(
//           child: Text(
//             'Welcome to PayLite',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

