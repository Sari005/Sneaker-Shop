import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/pages/HomePage.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PermissionHandlerWidget(child: HomePage()),
      ),
    );
  }
}

class PermissionHandlerWidget extends StatefulWidget {
  final Widget child;

  const PermissionHandlerWidget({Key? key, required this.child})
      : super(key: key);

  @override
  _PermissionHandlerWidgetState createState() =>
      _PermissionHandlerWidgetState();
}

class _PermissionHandlerWidgetState extends State<PermissionHandlerWidget> {
  @override
  void initState() {
    super.initState();
    requestPermissions();
  }

  Future<void> requestPermissions() async {
    // Request the required permissions here
    final permissionStatus = await Permission.camera.request();
    if (permissionStatus.isGranted) {
      // Permission granted, proceed with the app
    } else {
      // Permission denied, handle accordingly
      // You can show a dialog or message asking the user to grant permission
      // and guide them to the device settings to manually enable permissions
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
