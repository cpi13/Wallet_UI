import 'package:flutter/material.dart';
import 'package:wallet_ui/configure.dart';
import 'package:wallet_ui/widgets/card_details.dart';
class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text('Card Selected',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
        Expanded(child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
            itemBuilder: (context,index){
              return Container(
                width: MediaQuery.of(context).size.width,
                 margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                        top:150,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              boxShadow: customShadow,
                              shape: BoxShape.circle
                          ),
                        )),
                    Positioned.fill(
                      left:-300,
                       top:-100,
                        bottom: -100,
                        child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        boxShadow: customShadow,
                        shape: BoxShape.circle
                      ),
                    )),
                    const CardDetails(),
                  ],
                ),
              );
            }))
      ],

    );
  }
}
