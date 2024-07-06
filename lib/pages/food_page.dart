import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

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
  // method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    // close the current food page to go back to menu

    Navigator.pop(context);

    // format the selected addons
    List<Addon> currentSelectedAddons = [];

    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentSelectedAddons.add(addon);
      }
    }
    // add to cart
    context.read<Restaurant>().addToCart(food, currentSelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 12 / 9,
                child: Image.asset(
                  widget.food.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ), //food name
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
              MyButton(
                  text: 'Add to cart',
                  onTap: () => addToCart(widget.food, widget.selectedAddons)),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),

      // back button UI

      SafeArea(
        child: Opacity(
          opacity: 0.6,
          child: Container(
            margin: EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                //borderRadius: BorderRadius.circular(8.0)
                shape: BoxShape.circle),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
                onPressed: () => Navigator.pop(context)),
          ),
        ),
      ),
    ]);
  }
}
