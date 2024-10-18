import 'package:flutter/material.dart';
import 'package:wallet_ui/configure.dart';
import 'package:wallet_ui/widgets/card_section.dart';
import 'package:wallet_ui/widgets/header.dart';
import 'package:wallet_ui/widgets/expenses.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    theme: ThemeData(
      fontFamily: 'Circular'
    ),
  ));
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Container(
              height: 150,
              child: const WalletHeader()),
          const Expanded(child:CardSection()),
          const Expanded(child: Expenses()),
        ],
      ),
    );
  }
}


