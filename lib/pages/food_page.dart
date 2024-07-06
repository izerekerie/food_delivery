import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({
    super.key,
    required this.food,
  }) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.food.imagePath),
            //food name
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  // food price

                  Text(
                    '${widget.food.price} FRW',
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //food description

                  Text(
                    widget.food.description,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  // add ons
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Text(
                    'Add-ons',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  // get individual addons
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.circular(8)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          Addon addon = widget.food.availableAddons[index];
                          return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text(addon.price.toString()),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            },
                          );
                        }),
                  ),

                  //button-> add to cart
                ],
              ),
            ),
            MyButton(text: 'Add to cart', onTap: () {})
          ],
        ),
      ),
    );
  }
}
