import 'package:dartt_shop/src/config/custom_colors.dart';
import 'package:dartt_shop/src/pages/cart/cart_tab.dart';
import 'package:dartt_shop/src/pages/home/home_tab.dart';
import 'package:dartt_shop/src/pages/orders/orders_tab.dart';
import 'package:dartt_shop/src/pages/profile/profile_tab.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeTab(),
          CartTab(),
          OrderTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: colorPrimaryClient,
          selectedItemColor: colorSelectedClient,
          unselectedItemColor: colorUnSelectedClient,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Carrinho"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Pedidos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Perfil"),
          ]),
    );
  }
}
