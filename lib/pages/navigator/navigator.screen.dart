import 'package:carbonix/pages/calculator/calculator.screen.dart';
import 'package:carbonix/pages/finance/finance.screen.dart';
import 'package:carbonix/pages/home/home.screen.dart';
import 'package:carbonix/pages/settings/settings.screen.dart';
import 'package:carbonix/pages/shop/shop.screen.dart';
import 'package:carbonix/provider/cart.model.dart';
import 'package:carbonix/widgets/tab_navigation/tab_navigation.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _pageIndex = 0;

  List<Widget> _screens = [
    HomeScreen(),
    FinanceScreen(),
    ShopScreen(),
    CalculatorScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_pageIndex],
          TabNavigationWidget(
            pageIndex: _pageIndex,
            onTabSelected: (int index) {
              setState(() {
                _pageIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
