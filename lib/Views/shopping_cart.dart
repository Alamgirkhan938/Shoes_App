import 'package:flutter/material.dart';
import 'package:shoes_app/Widget/bold_text.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: BoldText(text: "Shopping Cart")),
    );
  }
}
