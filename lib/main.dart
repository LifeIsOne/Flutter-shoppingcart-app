import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(), // 앱 완성후 세로 높이가 맞지 않으면 Expanded 위젯 사용하자!
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar();
  }
}

class ShoppingCartHeader extends StatefulWidget {
  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
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

class ShoppingCartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
