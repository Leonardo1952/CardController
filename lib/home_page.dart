import 'package:card_controller/data.dart';
import 'package:card_controller/widgets/header.dart';
import 'package:flutter/material.dart';

import 'widgets/card_section.dart';
import 'widgets/expenses.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(height: 120, child: const WalletHeader()),
          const Expanded(child: CardSelection()),
          const Expanded(child: ExpanseSection()),
        ],
      ),
    );
  }
}
