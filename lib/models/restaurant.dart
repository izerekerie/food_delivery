import 'package:food_delivery/models/food.dart';

class Restaurant {
  final List<Food> _menu = [
    // burgers
    Food(
        name: 'Classic Cheeseburger',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/burgers/beef-burger.jpg",
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
        imagePath: "lib/images/burgers/salad1.jpg",
        price: 8000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Avocado', price: 8500),
        ]),
    // sides
    Food(
        name: ' French fries',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/burgers/side1.jpg",
        price: 8000,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 8000),
          Addon(name: 'Bacon', price: 9000),
        ]),
    // desserts
//drinks
    Food(
        name: ' Mojito ',
        description:
            'A juicy beef patty with melted cheddar,lettuce,tomato, and a hint of onion and pickle',
        imagePath: "lib/images/burgers/drink1.jpg",
        price: 8000,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'cold ', price: 8000),
        ]),
  ];
  // salads

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
