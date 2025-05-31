import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
	final List<List<String>> _cartItems = [
		['Product 1', '15.99', '2', 'lib/images/thumbnail_1.webp'],
		['Product 2', '25.50', '1', 'lib/images/thumbnail_2.webp'],
		['Product 3', '10.00', '3', 'lib/images/thumbnail_3.webp'],
	];


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

			body: _cartItems.isEmpty ?
			Container(
				margin: EdgeInsets.all(16),
				child: Text(
					'Your cart is empty',
					style: TextStyle(
						fontSize: 18,
						fontWeight: FontWeight.w500,
						color: Colors.grey,
					),
				),
			) :

			ListView.builder(
				shrinkWrap: true,
				itemCount: _cartItems.length,
				itemBuilder: (context, index) {
					return Container(
						padding: EdgeInsets.all(16),
						margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
						decoration: BoxDecoration(
							color: Colors.grey[200],
							borderRadius: BorderRadius.circular(8),
						),
						child: Row(
							children: [
								Image.asset(
									_cartItems[index][3],
									width: 80,
									height: 80,
									fit: BoxFit.cover,
								),
								SizedBox(width: 16),
								Expanded(
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											Text(
												_cartItems[index][0],
												style: TextStyle(
													fontSize: 16,
													fontWeight: FontWeight.w600,
												),
											),
											SizedBox(height: 8),
											Text(
												'RM${_cartItems[index][1]} x ${_cartItems[index][2]}',
												style: TextStyle(
													fontSize: 14,
													color: Colors.grey[700],
												),
											),
										],
									),
								),
							],
						),
					);
				}
			)
		);
  }
}