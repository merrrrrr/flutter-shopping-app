import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
			appBar: AppBar(
				centerTitle: true,
				title: Image(
					image: Image.asset('lib/images/7dayz_logo.webp').image,
					width: 100,
					),
				backgroundColor: Colors.white,
			),
			
			body: ListView(
				children: [
					Image(
						image: Image.asset('lib/images/thumbnail_1.webp').image,
					),

					Container(
						margin: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 24),
						child: Column(
							spacing: 20,
						  children: [
						    Center(
						    	child: Text(
						    		'Shop by Category',
						    		style: TextStyle(
						    			fontSize: 20,
						    			fontWeight: FontWeight.bold,
						    		),
						    	),
						    ),

								Image(image: Image.asset('lib/images/thumbnail_2.webp').image),
								Image(image: Image.asset('lib/images/thumbnail_3.webp').image),
								Image(image: Image.asset('lib/images/thumbnail_4.webp').image),
						  ],
						),
					)
				],
			),
		);
  }
}