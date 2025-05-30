import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
			physics: NeverScrollableScrollPhysics(),
			padding: EdgeInsets.only(left: 20, right: 20),
			gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
				mainAxisSpacing: 20,
				crossAxisSpacing: 12,
				crossAxisCount: 2,
				childAspectRatio: 0.75
			),
			itemCount: 20,
			itemBuilder: (context, index) {
				return Container(
					decoration: BoxDecoration(
					),
					child: Column(
						spacing: 4,
						children: [
							Expanded(
								child: Container(
									decoration: BoxDecoration(
										color: Colors.black
									),
								)
							),
							Text(
								'Men Printed Oversized Tee - SM2412267',
								textAlign: TextAlign.center,
								style: TextStyle(
									fontWeight: FontWeight.w600,
									fontSize: 12,
								),
								
							),
							Text(
								'RM100.00',
								style: TextStyle(
									fontWeight: FontWeight.w400,
									fontSize: 11
								),
							),
						],
					)
				);
			},
		);
  }
}