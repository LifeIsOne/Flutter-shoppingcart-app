import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/theme.dart';

import 'components/shoppingcart_detail.dart';
import 'components/shoppingcart_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
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
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
        SizedBox(width: 16)
      ],
      elevation: 0.0,
    );
  }
}
