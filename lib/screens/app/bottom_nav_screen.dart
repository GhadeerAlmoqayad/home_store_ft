import 'package:flutter/material.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';


class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(appBar: AppBar(
      title:Text( "الرئيسية"),

    ), child: SingleChildScrollView(
child: BottomNavigationBar(items: [

]),
    ));
  }
}
