import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/constants.dart';

void main() {
  runApp(MyApp());
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
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          selectedPic[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildHeaderSelectorButton(0, Icons.directions_bike),
        _buildHeaderSelectorButton(1, Icons.motorcycle),
        _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
        _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
      ],
    );
  }

  Widget _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
          onPressed: () {
            setState(() {
              selectedId = id;
            });
          },
          icon: Icon(mIcon, color: Colors.black)),
    );
  }
}

class ShoppingCartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40), // 끝을 둥글게 40 - 뭐를?
      ),
      child: Column(
        children: [
          _buildDetailNameAndPrice(),
          _buildDetailRatingAndReviewCount(),
          _buildDetailColorOptions(),
          _buildDetailButton(context),
        ],
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return SizedBox();
  }

  Widget _buildDetailRatingAndReviewCount() {
    return SizedBox();
  }

  Widget _buildDetailColorOptions() {
    return SizedBox();
  }

  Widget _buildDetailButton(BuildContext context) {
    return SizedBox();
  }
}
