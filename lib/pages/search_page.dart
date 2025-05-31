
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/widgets/product_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				centerTitle: true,
				backgroundColor: Colors.white,
				title: Text(
					'Shop',
					style: TextStyle(
						color: Color(0xFF244038),
						fontWeight: FontWeight.bold,
					),
				),
			),

			body: ListView(
				children: [
					Container(
						margin: EdgeInsets.only(left: 8, right: 8, top: 8),
						child: TextField(
							decoration: InputDecoration(
								border: OutlineInputBorder(
									borderRadius: BorderRadius.circular(4),
								)
							),
						),
					)
				],
			)

		);
  }
}