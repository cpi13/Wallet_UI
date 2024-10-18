import 'package:flutter/material.dart';
import 'package:wallet_ui/configure.dart';
class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 250,
              child: Image.asset('assets/mastercardlogo.png')),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(padding: const EdgeInsets.all(20.0),
          child:Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: customShadow,
              borderRadius: BorderRadius.circular(15.0)
            ),
          ),)
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(bottom: 30,left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('**** **** **** ',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('1950',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),

                  ],

                ),
                Text('PLATINUM CARD',style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
