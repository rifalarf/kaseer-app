import 'package:flutter/material.dart';
import 'package:kaseer_app/core/core.dart';

part './section/filter_section.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(Dimens.dp16),
        child: Column(
          children: [
            _FilterSection(),
          ],
        ),
      ),
    );
  }
}
