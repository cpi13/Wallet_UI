import 'package:flutter/material.dart';
import 'package:wallet_ui/configure.dart';
import 'package:wallet_ui/widgets/pie_chart.dart';
class Expenses extends StatelessWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text('Expenses',style:TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
          ),),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: expenses.map((value) =>Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: pieColors[expenses.indexOf(value)],
                      ),
                      const SizedBox(width: 20,),
                      Text(value['name'],style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w300),)
                    ],
                  ),
                )).toList(),
              ),
            )),
            const Expanded(
              flex: 4,
                child: PieChart()),
        ],),
      ],
    );
  }
}
