import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				centerTitle: true,
				backgroundColor: Colors.white,
				title: Text(
					'Profile',
					style: TextStyle(
						color: Color(0xFF244038),
						fontWeight: FontWeight.bold,
					),
				),
			),

			body: ListView(
				children: [
					ListTile(
						leading: Icon(Icons.person),
						title: Text('Account'),
						trailing: Icon(Icons.arrow_forward_ios),
						selectedTileColor: Color(0xFF244038),
						onTap: () => () {
							
						},
					),

					ListTile(
						leading: Icon(Icons.favorite),
						title: Text('Favorites'),
						trailing: Icon(Icons.arrow_forward_ios),
					),

					ListTile(
						leading: Icon(Icons.shopping_cart),
						title: Text('My Orders'),
						trailing: Icon(Icons.arrow_forward_ios),
					),

					ListTile(
						leading: Icon(Icons.settings),
						title: Text('Settings'),
						trailing: Icon(Icons.arrow_forward_ios),
					),



					ListTile(
						leading: Icon(Icons.help),
						title: Text('Help'),
						trailing: Icon(Icons.arrow_forward_ios),
					),
				],
			),
		);
  }
}