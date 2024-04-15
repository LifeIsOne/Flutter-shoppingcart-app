import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}

class ShoppingCarHeader extends StatefulWidget {
  const ShoppingCarHeader({super.key});

  @override
  State<ShoppingCarHeader> createState() => _ShoppingCarHeaderState();
}

class _ShoppingCarHeaderState extends State<ShoppingCarHeader> {
  int selectedId = 0;

  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
