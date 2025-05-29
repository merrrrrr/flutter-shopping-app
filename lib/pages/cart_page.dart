import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				centerTitle: true,
				backgroundColor: Colors.white,
				title: Text(
					'Cart',
					style: TextStyle(
						color: Color(0xFF244038),
						fontWeight: FontWeight.bold,
					),
				),
			),
		);
  }
}