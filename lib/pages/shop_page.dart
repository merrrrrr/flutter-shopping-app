
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/widgets/product_card.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

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
					SizedBox(
						height: 2800,
						
						
						child: Column(
						  children: [
						    Container(
									padding: EdgeInsets.only(left: 20, right: 20, top: 8),
									margin: EdgeInsets.only(bottom: 20),
									color: Color(0xFF244038),
						    	child: Column(
						    		crossAxisAlignment: CrossAxisAlignment.start,
						    		children: [
						    			Text(
						    				'All Products',
						    				style: TextStyle(
						    					color: Colors.white,
						    					fontSize: 20,
						    					fontWeight: FontWeight.bold,
						    				),
						    			),
						    							
						    			Text(
						    				'500 items found',
						    				style: TextStyle(
						    					color: Colors.white,
						    					fontSize: 12,
						    				),	
						    			),
						    							
						    			Row(
						    				children: [
						    					Expanded(
						    						child: Container(
						    							height: 36,
						    							color: Colors.white,
						    							margin: EdgeInsets.only( right: 8, top: 8, bottom: 8),
						    						),
						    					),
						    					Expanded(
						    						child: Container(
						    							height: 36,
						    							color: Colors.white,
						    							margin: EdgeInsets.only(left:8 , top: 8, bottom: 8),
						    						),
						    					),
						    				],
						    			),					
						    		],
						    	),
						    ),
								
								Expanded(
						    	child: ProductCard()
						    ),
						  ],
						),
					),

					Container(
						margin: EdgeInsets.symmetric(vertical: 20),
						color: Colors.amberAccent,
						child: Row(
							children: [
									
							],
						),
					)
				],
			)

		);
  }
}