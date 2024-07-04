import 'package:flutter/material.dart';
import 'package:sneaker_shop/Components/google_nav_bar.dart';
import 'package:sneaker_shop/pages/admin_panel.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/full_menu.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will uptade our selected index
  //when the user taps on the bpottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //shop page
    const Menu(),
    //Cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color.fromARGB(255, 204, 227, 222),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   // leading: Builder(
      //   //   builder: (context) => IconButton(
      //   //     onPressed: () {
      //   //       Scaffold.of(context).openDrawer();
      //   //     },
      //   //     icon: Padding(
      //   //       padding: const EdgeInsets.only(left: 12),
      //   //       child: Icon(Icons.menu),
      //   //     ),
      //   //   ),
      //   // )
      // ),
      // drawer: Drawer(
      //   backgroundColor: Colors.grey[900],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //           child: Image.asset(
      //         'assets/images/nike3.png',
      //         color: Colors.white,
      //         width: 150,
      //       )),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 0),
      //         child: Divider(
      //           color: Colors.grey[900],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 25.0),
      //         child: ListTile(
      //           leading: Icon(
      //             Icons.home,
      //             color: Colors.white,
      //           ),
      //           title: Text(
      //             'Home',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 25.0),
      //         child: ListTile(
      //           leading: Icon(
      //             Icons.info,
      //             color: Colors.white,
      //           ),
      //           title: Text(
      //             'About',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 350,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 25.0),
      //         child: ListTile(
      //           leading: Icon(
      //             Icons.logout,
      //             color: Colors.white,
      //           ),
      //           title: Text(
      //             'Logout',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: _pages[_selectedIndex],
      floatingActionButton: IconButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => AdminPanel())),
          icon: Icon(Icons.add)),
    );
  }
}
