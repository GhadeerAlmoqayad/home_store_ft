import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/screens/app/bottom_nav_bar_screens/user_account.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

import '../../../models/bn_screen.dart';
import '../../../widgets/custom_drawer_item.dart';
import '../cart_tabs/cart_screen.dart';
import 'home_main_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedPageIndex = 0;

  final List<BnScreen> _screens = <BnScreen>[
    const BnScreen(title: 'الرئيسية', widget: HomeMainScreen()),
    const BnScreen(title: 'Users', widget: CartScreen()),
    const BnScreen(title: 'السلة', widget: CartScreen()),
    const BnScreen(title: 'الحساب', widget: UserAccount()),
  ];



  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: AppBar(
          title: Text(_screens[_selectedPageIndex].title),

        ),
        drawer: Drawer(
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  bottomLeft: Radius.circular(25.r),
                ),
                gradient: LinearGradient(
                    colors: [Color(0xFF0C7A0C), Color(0xFF042D04)])),
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              children: [
                // const DrawerHeader(
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //   ),
                //   child: Text('Drawer Header'),
                // ),
                SizedBox(
                  height: 64.h,
                ),

                Text(
                  "أهلا بك",
                  style: GoogleFonts.cairo(
                      fontSize: 39.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: Colors.white,
                ),
                CustomDrawerItem(
                  title: "منتجاتي المفضلة",
                  iconData: Icons.star,
                  onTap: (){
                    Navigator.pushNamed(context, '/favorite_products');
                  },
                ),
                CustomDrawerItem(
                  title: "عنواين الشحن",
                  iconData: Icons.location_on,
                  onTap:(){
                  Navigator.pushNamed(context, '/general_tabs');}
                ),
                CustomDrawerItem(
                  title: "مقارنة المنتجات",
                  iconData: Icons.ac_unit_outlined,
                    onTap:(){
                      Navigator.pushNamed(context, '/compare_products');

                  }
                ),
                CustomDrawerItem(
                  title: "الاشعارات",
                  iconData: Icons.notifications,

                    onTap:(){
                      Navigator.pushNamed(context, '/notifications_screen');

                    }
                ),
                CustomDrawerItem(
                  title: "الشروط و الأحكام",
                  iconData: Icons.rotate_left,
                    onTap:(){
                      Navigator.pushNamed(context, '/terms_conditions');

                    }
                ),
                CustomDrawerItem(
                  title: "سياسة الخصوصية",
                  iconData: Icons.lock,


                    onTap:(){
          Navigator.pushNamed(context, '/privacy_policy');

          }
                ),
                CustomDrawerItem(
                  title: "من نحن",
                  iconData: Icons.question_mark,
                    onTap:(){
                      Navigator.pushNamed(context, '/about_app');

                    }
                ),
                CustomDrawerItem(
                  title: "قيم التطبيق",
                  iconData: Icons.star,
                    onTap:(){
                      Navigator.pushNamed(context, '/star_rating');

                    }

                ),
                SizedBox(
                  height: 80.h,
                ),
                CustomDrawerItem(
                  title: "تسجيل الخروج",
                  iconData: Icons.logout,
                ),
                SizedBox(
                  height: 70.h,
                ),
              ],
            ),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: _screens[_selectedPageIndex].widget,
            ),
            Container(

              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //     topRight: Radius.circular(30.r), topLeft: Radius.circular(30.r)),
                boxShadow: [
                  BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0.r), topRight: Radius.circular(30.0.r), ),

                child: BottomNavigationBar(
                  onTap: (int selectedPageIndex) {
                    setState(() => _selectedPageIndex = selectedPageIndex);
                  },


                  currentIndex: _selectedPageIndex,
                  backgroundColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  // type: BottomNavigationBarType.shifting,
                  //*********************************
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  //*********************************
                  // fixedColor: Colors.black,
                  selectedItemColor: AppConstants.primaryGreenColor,
                  selectedIconTheme:  IconThemeData(
                    color: AppConstants.primaryGreenColor,
                    // size: 14,
                  ),
                  selectedLabelStyle: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                //  selectedFontSize: 14,
                  //*********************************
                  unselectedItemColor: Colors.grey.shade400,
                  unselectedIconTheme: IconThemeData(
                    color: Colors.grey.shade800,
                    // size: 18,
                  ),
                  unselectedLabelStyle: GoogleFonts.cairo(
                    fontSize: 11,
                  ),
                  unselectedFontSize: 12,
                  //*********************************
                  iconSize: 30,
                  //*********************************
                  elevation: 20,
                  //*********************************
                  items: [
                    BottomNavigationBarItem(
                      activeIcon: const Icon(Icons.home),
                      icon: const Icon(Icons.home_outlined),
                      label: 'الرئيسية',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: const Icon(Icons.person),
                      icon: const Icon(Icons.person_outline),
                      label: 'Users',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: const Icon(Icons.shopping_cart),
                      icon: const Icon(Icons.shopping_cart_outlined),
                      label: 'السلة',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: const Icon(Icons.person),
                      icon: const Icon(Icons.person_outline),
                      label: 'الحساب',
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
