import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});
  @override
  Widget build(BuildContext context) {
    var myPrimaryTextSTyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);

    var mySecondaryTextSTyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delivery fee
          Column(
            children: [
              Text(
                '1500 FRW',
                style: myPrimaryTextSTyle,
              ),
              Text(
                'Delivery Fee',
                style: mySecondaryTextSTyle,
              )
            ],
          ),
//delivery  time
          Column(
            children: [
              Text(
                '20-40 min',
                style: myPrimaryTextSTyle,
              ),
              Text(
                'Delivery Time',
                style: mySecondaryTextSTyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
