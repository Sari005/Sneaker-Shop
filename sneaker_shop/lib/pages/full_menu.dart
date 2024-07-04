import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/Components/menu_tile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String _selectedCategory = 'cake';
  final List<String> _categories = [
    'pizza',
    'drinks',
    'ice cream',
    'sweets',
    'chocolates',
    'cookies',
    'candies',
    'pastries',
  ];

  final Map<String, IconData> _categoryIcons = {
    'Pizza': Icons.local_pizza_outlined,
    'drinks': Icons.local_drink,
    'ice cream': Icons.icecream,
    'sweets': Icons.dangerous,
    'chocolates': Icons.dangerous,
    'cookies': Icons.cookie,
    'candies': Icons.dangerous,
    'pastries': Icons.local_cafe,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 227, 222),
      body: Padding(
        padding: const EdgeInsets.only(top: 45.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: _categories.map((String category) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                    child: Chip(
                      avatar: Icon(
                        _categoryIcons[category],
                        color: _selectedCategory == category
                            ? Colors.white
                            : const Color.fromARGB(255, 107, 144, 128),
                      ),
                      label: Text(category),
                      backgroundColor: _selectedCategory == category
                          ? const Color.fromARGB(255, 107, 144, 128)
                          : const Color.fromARGB(255, 234, 244, 244),
                      labelStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: _selectedCategory == category
                            ? Colors.white
                            : const Color.fromARGB(255, 107, 144, 128),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: _buildShoeList(_selectedCategory),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShoeList(String type) {
    // Get the list of shoes for the selected category from the Cart model
    List<Shoe> shoes = Provider.of<Cart>(context).getShoesByType(type);
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.65,
      ),
      itemCount: shoes.length,
      itemBuilder: (context, index) {
        Shoe shoe = shoes[index];
        return MenuTile(
          shoe: shoe,
          onTap: () => _addShoeToCart(shoe),
        );
      },
    );
  }

  void _addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Successfully added!'),
        content: const Text('Check your cart!'),
      ),
    );
  }
}
