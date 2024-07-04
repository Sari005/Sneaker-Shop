// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sneaker_shop/Components/shoe_tile.dart';
// import 'package:sneaker_shop/models/cart.dart';
// import 'package:sneaker_shop/models/shoe.dart';
// import 'package:sneaker_shop/pages/full_menu.dart';

// class ShopPage extends StatefulWidget {
//   const ShopPage({super.key});

//   @override
//   State<ShopPage> createState() => _ShopPageState();
// }

// class _ShopPageState extends State<ShopPage> {
//   //add shoe to cart
//   void addShoeToCart(Shoe shoe) {
//     Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

//     //alert the user shoe successfully added
//     showDialog(
//       context: context,
//       builder: ((context) => AlertDialog(
//             title: Text('Successfully added!'),
//             content: Text('Check your cart!'),
//           )),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Cart>(
//       builder: (context, cart, child) {
//         List<Shoe> shoes = cart.getShoeList(); // Correct list of shoes
//         return Column(
//           children: [
//             //image
//             Image.asset(
//               'assets/images/cafe.png',
//               height: 150,
//             ),
//             // //search bar
//             // Container(
//             //   padding: EdgeInsets.all(12),
//             //   margin: EdgeInsets.symmetric(horizontal: 25),
//             //   decoration: BoxDecoration(
//             //     color: Colors.grey[200],
//             //     borderRadius: BorderRadius.circular(8),
//             //   ),
//             //   child: Row(
//             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       Text(
//             //         'Search',
//             //         style: TextStyle(color: Colors.grey),
//             //       ),
//             //       Icon(
//             //         Icons.search,
//             //         color: Colors.grey,
//             //       ),
//             //     ],
//             //   ),
//             // ),

//             //message
//             // Padding(
//             //   padding: EdgeInsets.symmetric(vertical: 25),
//             //   child: Text(
//             //     'Everyone flies..  some fly longer than others',
//             //     style: TextStyle(color: Colors.grey[600]),
//             //   ),
//             // ),
//             SizedBox(
//               height: 20,
//             ),

//             //hot picks
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     'Hot Picks 🔥',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Menu()),
//                       );
//                     },
//                     child: Text(
//                       'See more...',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.blue),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: shoes.length, // Ensure this is the correct list
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   Shoe shoe =
//                       shoes[index]; // Correctly get the shoe from the list
//                   return ShoeTile(
//                     shoe: shoe,
//                     onTap: () => addShoeToCart(shoe),
//                   );
//                 },
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
