import 'package:flutter/material.dart';
import 'package:kaseer_app/core/core.dart';
import 'package:kaseer_app/features/home/pages/home/page.dart';
import 'package:kaseer_app/features/pos/pages/page.dart';
import 'package:kaseer_app/features/product/product.dart';
import 'package:kaseer_app/features/settings/pages/pages.dart';
import 'package:kaseer_app/features/transaction/transaction.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String routeName = '/home';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = const [
    HomePage(),
    TransactionPage(),
    POSPage(),
    ProductPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(AppIcons.storefront), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(AppIcons.receipt), label: 'Transaksi'),
          BottomNavigationBarItem(icon: Icon(AppIcons.pos), label: 'POS'),
          BottomNavigationBarItem(
              icon: Icon(AppIcons.product), label: 'Produk'),
          BottomNavigationBarItem(
              icon: Icon(AppIcons.settings), label: 'Lainnya'),
        ],
      ),
    );
  }
}
