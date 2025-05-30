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

					SizedBox(
						height: 20,
					),

					Container(
						margin: EdgeInsets.symmetric(horizontal: 8),
						height: 400,
						decoration: BoxDecoration(
							color: Colors.black,
						),
						child: Center(
							child: Text(
								'New Arrivals',
								style: TextStyle(
									color:Colors.white,
									fontSize: 20,
									fontWeight: FontWeight.w700
								),
							),
						),
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

								GridView.count(
									crossAxisCount: 2,
									crossAxisSpacing: 8,
									mainAxisSpacing: 8,
									shrinkWrap: true,
									physics: NeverScrollableScrollPhysics(),
									children: [
										Container(
											decoration: BoxDecoration(
												color: Colors.black
											),
											child: Center(
												child: Text(
													'Mens',
													style: TextStyle(
														color: Colors.white,
														fontSize: 16,
														fontWeight: FontWeight.bold,
													),
												),
											),
										),
										Container(
											decoration: BoxDecoration(
												color: Colors.black
											),
											child: Center(
												child: Text(
													'Womens',
													style: TextStyle(
														color: Colors.white,
														fontSize: 16,
														fontWeight: FontWeight.bold,
													),
												),
											),
										),
										Container(
											decoration: BoxDecoration(
												color: Colors.black
											),
											child: Center(
												child: Text(
													'Children',
													style: TextStyle(
														color: Colors.white,
														fontSize: 16,
														fontWeight: FontWeight.bold,
													),
												),
											),
										),
										Container(
											decoration: BoxDecoration(
												color: Colors.black
											),
											child: Center(
												child: Text(
													'Accessories',
													style: TextStyle(
														color: Colors.white,
														fontSize: 16,
														fontWeight: FontWeight.bold,
													),
												),
											),
										),
									],
								),


								
						  ],
						),
					)
				],
			),
		);
  }
}