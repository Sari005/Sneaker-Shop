// import 'package:flutter/material.dart';
// import 'package:sneaker_shop/models/shoe.dart';

// class Cart extends ChangeNotifier {
//   //list of shoes for sale
//   List<Shoe> shoeShop = [
//     Shoe(
//       name: 'Cake',
//       price: 5,
//       imagePath: 'assets/images/cake1.png',
//       description: 'Cool Shoe!',
//       type: 'cake',
//     ),
//     Shoe(
//       name: 'Birthday Cake',
//       price: 10,
//       imagePath: 'assets/images/cake2.png',
//       description: 'Cool Shoe!',
//       type: 'cake',
//     ),
//     Shoe(
//       name: 'Slice Cake',
//       price: 2,
//       imagePath: 'assets/images/cake3.png',
//       description: 'Cool Shoe!',
//       type: 'cake',
//     ),
//     Shoe(
//       name: 'Soft Drink',
//       price: 2,
//       imagePath: 'assets/images/drink1.png',
//       description: 'Cool Shoe!',
//       type: 'drinks',
//     ),
//     Shoe(
//       name: 'Juice',
//       price: 2,
//       imagePath: 'assets/images/drink2.png',
//       description: 'Cool Shoe!',
//       type: 'drinks',
//     ),
//     Shoe(
//       name: 'Water',
//       price: 1,
//       imagePath: 'assets/images/drink3.png',
//       description: 'Cool Shoe!',
//       type: 'drinks',
//     ),
//     Shoe(
//       name: 'Ice Cream',
//       price: 2,
//       imagePath: 'assets/images/ice-cream1.png',
//       description: 'Cool Shoe!',
//       type: 'ice cream',
//     ),
//     Shoe(
//       name: 'Ice Cream',
//       price: 1,
//       imagePath: 'assets/images/ice-cream2.png',
//       description: 'Cool Shoe!',
//       type: 'ice cream',
//     ),
//     Shoe(
//       name: 'Ice Cream',
//       price: 1,
//       imagePath: 'assets/images/ice-cream3.png',
//       description: 'Cool Shoe!',
//       type: 'ice cream',
//     ),
//     Shoe(
//       name: 'Kunafa',
//       price: 5,
//       imagePath: 'assets/images/kunafa1.png',
//       description: 'Cool Shoe!',
//       type: 'sweets',
//     ),
//     Shoe(
//       name: 'Cookie',
//       price: 4,
//       imagePath: 'assets/images/kunafa2.png',
//       description: 'Cool Shoe!',
//       type: 'sweets',
//     ),
//     Shoe(
//       name: 'Donut',
//       price: 2,
//       imagePath: 'assets/images/kunafa3.png',
//       description: 'Cool Shoe!',
//       type: 'sweets',
//     ),
//     // Shoe(
//     //   name: 'Air Jordan',
//     //   price: 200,
//     //   imagePath: 'assets/images/4.png',
//     //   description: 'Cool Shoe!',
//     //   type: 'red',
//     // ),
//   ];

//   // Method to get shoes by type (color)
//   List<Shoe> getShoesByType(String type) {
//     return shoeShop.where((shoe) => shoe.type == type).toList();
//   }

//   //list of items in user cart
//   List<Shoe> userCart = [];
//   //get list of shoes for sale
//   List<Shoe> getShoeList() {
//     return shoeShop;
//   }

//   // get cart
//   List<Shoe> getUserCart() {
//     return userCart;
//   }

//   //add items to cart
//   void addItemToCart(Shoe shoe) {
//     userCart.add(shoe);
//     notifyListeners();
//   }

//   //remove items from cart
//   void removeItemFromCart(Shoe shoe) {
//     userCart.remove(shoe);
//     notifyListeners();
//   }

//   // Get total price of items in the cart
//   double get totalPrice {
//     return userCart.fold(0.0, (sum, shoe) => sum + shoe.price);
//   }
// }

import 'package:flutter/material.dart';
import 'food_item.dart';
import 'shoe.dart';

class Cart with ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Pizza',
      price: 5,
      imagePath: 'assets/images/pizza1.png',
      description: 'Cool Shoe!',
      type: 'pizza',
    ),
    Shoe(
      name: 'Pizza',
      price: 10,
      imagePath: 'assets/images/pizza2.png',
      description: 'Cool Shoe!',
      type: 'pizza',
    ),
    Shoe(
      name: 'Pizza',
      price: 2,
      imagePath: 'assets/images/pizza3.png',
      description: 'Cool Shoe!',
      type: 'pizza',
    ),
    Shoe(
      name: 'Pizza',
      price: 2,
      imagePath: 'assets/images/pizza4.png',
      description: 'Cool Shoe!',
      type: 'pizza',
    ),
    Shoe(
      name: 'Pizza',
      price: 2,
      imagePath: 'assets/images/pizza5.png',
      description: 'Cool Shoe!',
      type: 'pizza',
    ),
    Shoe(
      name: 'Soft Drink',
      price: 2,
      imagePath: 'assets/images/drink1.png',
      description: 'Cool Shoe!',
      type: 'drinks',
    ),
    Shoe(
      name: 'Juice',
      price: 2,
      imagePath: 'assets/images/drink2.png',
      description: 'Cool Shoe!',
      type: 'drinks',
    ),
    Shoe(
      name: 'Watermelon',
      price: 1,
      imagePath: 'assets/images/drink4.png',
      description: 'Cool Shoe!',
      type: 'drinks',
    ),
    Shoe(
      name: 'Ice Cream',
      price: 2,
      imagePath: 'assets/images/ice1.png',
      description: 'Cool Shoe!',
      type: 'ice cream',
    ),
    Shoe(
      name: 'Ice Cream',
      price: 1,
      imagePath: 'assets/images/ice2.png',
      description: 'Cool Shoe!',
      type: 'ice cream',
    ),
    Shoe(
      name: 'Ice Cream',
      price: 1,
      imagePath: 'assets/images/ice3.png',
      description: 'Cool Shoe!',
      type: 'ice cream',
    ),
    // Shoe(
    //   name: 'Kunafa',
    //   price: 5,
    //   imagePath: 'assets/images/kunafa1.png',
    //   description: 'Cool Shoe!',
    //   type: 'sweets',
    // ),
    // Shoe(
    //   name: 'Cookie',
    //   price: 4,
    //   imagePath: 'assets/images/kunafa2.png',
    //   description: 'Cool Shoe!',
    //   type: 'sweets',
    // ),
    // Shoe(
    //   name: 'Donut',
    //   price: 2,
    //   imagePath: 'assets/images/kunafa3.png',
    //   description: 'Cool Shoe!',
    //   type: 'sweets',
    // ),
  ];

  List<FoodItem> foodItems = [];

  List<Shoe> userCart = [];
  List<FoodItem> userFoodCart = [];

  List<Shoe> getShoesByType(String type) {
    return shoeShop.where((shoe) => shoe.type == type).toList();
  }

  List<FoodItem> getFoodItemsByCategory(String category) {
    return foodItems.where((item) => item.category == category).toList();
  }

  // Method to add an item to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Method to remove an item from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  // Method to add an item to the menu
  void addItemToMenu(Shoe shoe) {
    shoeShop.add(shoe);
    notifyListeners();
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  double get totalPrice {
    return userCart.fold(0.0, (sum, shoe) => sum + shoe.price);
  }

  double get totalFoodPrice {
    return userFoodCart.fold(0.0, (sum, foodItem) => sum + foodItem.price);
  }
}
