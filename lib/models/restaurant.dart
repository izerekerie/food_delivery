import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

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
  //  delivery address (which user can change/update)
// user cart
  final List<CartItem> _cart = [];

  String _deliveryAddress = 'Kigali Height';
  //GETTERS

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

//  OPERATIONS

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // check if there is item already with the same food and selected addons

    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check of the food items are the same
      bool isSameFood = item.food == food;
      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
//if item already exist increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise add a new cart item to the start
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();
  }

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
// get total price of cart

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
// get total number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// update delivery address

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

//  HELPERS
// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt. ");
    receipt.writeln();
    String formattedDate =
        DateFormat('yyyy-MM-ddHH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------");
    for (final cartItem in cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name}- ${_formatPrice(cartItem.food.price)} ");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: ${deliveryAddress}");

    return receipt.toString();
  }

//format double value  into money
  String _formatPrice(double price) {
    return "${price.toStringAsFixed(2)} RFW";
  }
// format list of addons into string summary

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
