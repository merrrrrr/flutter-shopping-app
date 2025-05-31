import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/widgets/image_slider.dart';

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
					ImageSlider(),


					SizedBox(
						height: 36,
					),

					Container(
						margin: EdgeInsets.symmetric(horizontal: 12),
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
					),

					SizedBox(
						height: 36,
					),
					
					Container(
						margin: EdgeInsets.only(bottom: 8, left: 12, right: 12),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: [
								Text(
									'New Arrivals',
									style: TextStyle(
										fontSize: 20,
										fontWeight: FontWeight.bold,
									),
								),

								TextButton(
									onPressed: () {},
									child: Text(
										'See All',
										style: TextStyle(
											fontSize: 14,
											color: Colors.black,
										),
									),
								),
							],
						),
					),

					SizedBox(
						height: 280,
						child: ListView.builder(
							itemCount: 10,
							scrollDirection: Axis.horizontal,
							itemBuilder: (context, index) {
								return Container(
									width: 200,
									padding: EdgeInsets.all(8),
									decoration: BoxDecoration(
										color: Colors.grey[200],
										borderRadius: BorderRadius.circular(12),
										border: Border.all(
											color: Colors.grey,
											width: 1,
										),
									),
									margin: EdgeInsets.symmetric(horizontal: 8),
									child: Column(
										children: [
											Container(
												height: 200,
												decoration: BoxDecoration(
													color: Colors.black,
													borderRadius: BorderRadius.circular(12),
												),
											),

											SizedBox(
												height: 8
											),

											Text(
												'New Arrival ${index + 1}',
												style: TextStyle(
													fontSize: 16,
													fontWeight: FontWeight.bold,
												),
											),
											
											Text(
												'Price: RM10.00',
											),
										],
									),
								);
							},
						),
					),


					SizedBox(
						height: 36,
					),

					Container(
						margin: EdgeInsets.only(bottom: 8, left: 12, right: 12),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: [
								Text(
									'Up to 50% Off',
									style: TextStyle(
										fontSize: 20,
										fontWeight: FontWeight.bold,
									),
								),

								TextButton(
									onPressed: () {},
									child: Text(
										'See All',
										style: TextStyle(
											fontSize: 14,
											color: Colors.black,
										),
									),
								),
							],
						),
					),

					SizedBox(
						height: 280,
						child: ListView.builder(
							itemCount: 10,
							scrollDirection: Axis.horizontal,
							itemBuilder: (context, index) {
								return Container(
									width: 200,
									padding: EdgeInsets.all(8),
									decoration: BoxDecoration(
										color: Colors.grey[200],
										borderRadius: BorderRadius.circular(12),
										border: Border.all(
											color: Colors.grey,
											width: 1,
										),
									),
									margin: EdgeInsets.symmetric(horizontal: 8),
									child: Column(
										children: [
											Container(
												height: 200,
												decoration: BoxDecoration(
													color: Colors.black,
													borderRadius: BorderRadius.circular(12),
												),
											),

											SizedBox(
												height: 8
											),

											Text(
												'Product Name ${index + 1}',
												style: TextStyle(
													fontSize: 16,
													fontWeight: FontWeight.bold,
												),
											),
											
											Text(
												'Price: RM10.00',
											),
										],
									),
								);
							},
						),
					),

					SizedBox(
						height: 60,
					),

				],
			),
		);
  }
}