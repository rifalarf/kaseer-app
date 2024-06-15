import 'package:flutter/material.dart';
import 'package:kaseer_app/features/home/pages/home/page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Transaksi'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'POS'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Produk'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Lainnya'),
        ],
      ),
    );
  }
}