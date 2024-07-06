import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
        name: 'Classic Cheese burger',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/burgers/cheese-burger.jpg",
        price: 8000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Bacon', price: 9000),
          Addon(name: 'Avocado', price: 8500),
        ]),
    Food(
        name: 'Chicken  burger',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/burgers/chicken-burger.jpg",
        price: 8000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Bacon', price: 9000),
          Addon(name: 'Avocado', price: 8500),
        ]),
    Food(
        name: 'Vegan  burger',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/burgers/veg-burger.jpg",
        price: 8000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Bacon', price: 9000),
          Addon(name: 'Avocado', price: 8500),
        ]),
    //salads

    Food(
        name: ' Greek Salad',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/salads/salad1.jpg",
        price: 8000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Avocado', price: 8500),
        ]),
    Food(
        name: ' Classic Salad',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/salads/salad2.jpg",
        price: 8000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Avocado', price: 8500),
        ]),
    // sides
    Food(
        name: '  Fries ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/sides/side3.jpg",
        price: 8000,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Bacon', price: 9000),
        ]),
    Food(
        name: '  Plantain ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/sides/side1.jpg",
        price: 8000,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Bacon', price: 9000),
        ]),

    Food(
        name: '  Dumplings ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/sides/side2.jpg",
        price: 8000,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Bacon', price: 9000),
        ]),
    // desserts
    Food(
        name: ' Cake',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/desserts/dessert1.jpg",
        price: 8000,
        category: FoodCategory.desserts,
        availableAddons: []),
    Food(
        name: ' Croissant',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/desserts/dessert3.jpg",
        price: 8000,
        category: FoodCategory.desserts,
        availableAddons: []),
    Food(
        name: ' Chocolate honey cake',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/desserts/dessert2.jpg",
        price: 8000,
        category: FoodCategory.desserts,
        availableAddons: []),
    Food(
        name: ' Passion pro',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/desserts/dessert4.jpg",
        price: 8000,
        category: FoodCategory.desserts,
        availableAddons: []),
//drinks
    Food(
        name: ' Mojito ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/drinks/drink1.jpg",
        price: 8000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'cold ', price: 8000),
        ]),
    Food(
        name: ' Coca Cola ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/drinks/drink2.jpg",
        price: 8000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'cold ', price: 8000),
        ]),
    Food(
        name: ' Sprite ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/drinks/drink3.jpg",
        price: 8000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'cold ', price: 8000),
        ]),
    Food(
        name: ' Bavaria ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/drinks/drink4.jpg",
        price: 8000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'cold ', price: 8000),
        ]),
  ];

  //GETTERS

  List<Food> get menu => _menu;

//  OPERATIONS

// add to cart

//remove from cart

// get total price of cart

// get total number of items in cart

//clear cart

//  HELPERS
// generate a receipt

//format double value  into money

// format list of addons into string summary
}
