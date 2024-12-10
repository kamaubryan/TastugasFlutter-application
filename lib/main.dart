import 'package:coffee_card/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'landing.dart';

  void main() {
  runApp( GetMaterialApp(
home: Homepage()
// Scaffold(
//       appBar: AppBar(
//       title: const Text("My Coffee Id"),
//     backgroundColor: Colors.brown[700],
//         centerTitle: true,
//
//   ),
//   body: const Text("Hello there") ,
//
//   )
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

