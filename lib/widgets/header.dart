import 'package:flutter/material.dart';
import 'package:wallet_ui/configure.dart';
class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Krishna's Wallet",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: customShadow,
              color: primaryColor,
              shape: BoxShape.circle
            ),
            child:  Stack(
              children: [
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                        color:Colors.deepOrange,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        color: primaryColor,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                const Center(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
