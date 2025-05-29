import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/pages/cart_page.dart';
import 'package:flutter_shopping_app/pages/home_page.dart';
import 'package:flutter_shopping_app/pages/profile_page.dart';
import 'package:flutter_shopping_app/pages/shop_page.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
	int _selectedIndex = 0;

	final List _pages = [
		HomePage(),
		ShopPage(),
		CartPage(),
		ProfilePage(),
	];

	void _changeIndex(int index) {
		setState(() {
			_selectedIndex = index;
		});
	}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			body: _pages[_selectedIndex],
			bottomNavigationBar: BottomNavigationBar(
				type: BottomNavigationBarType.fixed,
				selectedItemColor: Color(0xFF244038),
				unselectedItemColor: Colors.grey,
				showUnselectedLabels: true,
						items: [
							BottomNavigationBarItem(
								icon: Icon(Icons.home),
								label: 'Home',
							),
			
							BottomNavigationBarItem(
								icon: Icon(Icons.shopping_bag),
								label: 'Shop',
							),

							BottomNavigationBarItem(
								icon: Icon(Icons.shopping_cart),
								label: 'Cart',
							),
			
							BottomNavigationBarItem(
								icon: Icon(Icons.person),
								label: 'Profile',
							),
						],
						currentIndex: _selectedIndex,
						onTap: _changeIndex,
					),
		);
  }
}