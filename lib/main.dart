import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/about_app.dart';
import 'package:home_store_ft/screens/app/bc_screen.dart';
import 'package:home_store_ft/screens/app/bottom_nav_bar_screens/bottom_nav_screen.dart';
import 'package:home_store_ft/screens/app/cart_tabs/addresses_screen.dart';
import 'package:home_store_ft/screens/app/cart_tabs/cart_screen.dart';
import 'package:home_store_ft/screens/app/cart_tabs/finish_request.dart';
import 'package:home_store_ft/screens/app/cart_tabs/general_tabs.dart';
import 'package:home_store_ft/screens/app/cart_tabs/shipping_Screen.dart';
import 'package:home_store_ft/screens/app/cart_tabs/shipping_address.dart';
import 'package:home_store_ft/screens/app/compare_products.dart';
import 'package:home_store_ft/screens/app/comparison_results.dart';
import 'package:home_store_ft/screens/app/favorite_products.dart';
import 'package:home_store_ft/screens/app/bottom_nav_bar_screens/home_main_screen.dart';
import 'package:home_store_ft/screens/app/launch_Screen.dart';
import 'package:home_store_ft/screens/app/modify_profile_screen.dart';
import 'package:home_store_ft/screens/app/notifications_screen.dart';
import 'package:home_store_ft/screens/app/on_boarding_screen.dart';
import 'package:home_store_ft/screens/app/orders.dart';
import 'package:home_store_ft/screens/app/privacy_policy.dart';
import 'package:home_store_ft/screens/app/product_details.dart';
import 'package:home_store_ft/screens/app/terms_conditions_screen.dart';
import 'package:home_store_ft/screens/auth/reset_pass_by_email.dart';
import 'package:home_store_ft/screens/app/sections_screen.dart';
import 'package:home_store_ft/screens/app/add_shipping_address.dart';
import 'package:home_store_ft/screens/app/star_rating.dart';
import 'package:home_store_ft/screens/app/bottom_nav_bar_screens/user_account.dart';
import 'package:home_store_ft/screens/auth/auth_screen.dart';
import 'package:home_store_ft/screens/auth/email_code_vertification.dart';
import 'package:home_store_ft/screens/auth/login_screen.dart';
import 'package:home_store_ft/screens/auth/password_code_vertification.dart';
import 'package:home_store_ft/screens/auth/register_screen.dart';
import 'package:home_store_ft/screens/auth/reset_password.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        splitScreenMode: true,
        minTextAdapt: true,
        designSize: Size(375, 812),
        builder: (context, child) {
          return MaterialApp(


            localizationsDelegates: [

              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en'), // English
              const Locale('ar'), // Arabic
            ],
            locale: const Locale('ar'),

            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                appBarTheme: AppBarTheme(
                  color: Colors.transparent,
                  centerTitle: true,
                  elevation: 0,
titleTextStyle: GoogleFonts.cairo(
  fontWeight: FontWeight.bold,
  fontSize: 18.sp
),


                )
            ),
            initialRoute: '/product_details',
            routes: {
               '/launch_screen':(context)=> LaunchScreen(),

               '/on_boarding_screen':(context)=> OnBoardingScreen(),
              '/auth_screen':(context)=> AuthScreen(),
              '/login_screen':(context)=> LoginScreen(),
              '/register_screen':(context)=>RegisterScreen(),
           //   '/bc_screen':(context)=>backScreen( children: []),


              '/email_reset_pass':(context)=> EmailResetPassword(),
              '/reset_password':(context)=> ResetPassword(),
              '/password_code_verification':(context)=>PasswordCodeVertification(),
              '/email_code_verification':(context)=>EmailCodeVerification(),
          //    '/home_main_screen':(context)=>HomeMainScreen(),
              '/add_shipping_address':(context)=> AddShippingAddress(),
              '/star_rating':(context)=> StarRating(),

              '/bottom_nav_screen':(context)=> BottomNavScreen(),
              '/sections_screen':(context)=> SectionsScreen(),
              '/favorite_products':(context)=> FavoriteProducts(),
              '/orders_screen':(context)=> OrdersScreen(),
              '/notifications_screen':(context)=> NotificationsScreen(),
              '/general_tabs':(context)=> GeneralTabs(),
              '/cart_screen':(context)=>CartScreen(),
              '/shipping_screen':(context)=>ShippingScreen(),
              '/modify_profile':(context)=>ModifyProfile(),
              '/user_account':(context)=>UserAccount(),
              '/compare_products':(context)=>CompareProducts(),
              '/comparison_results':(context)=>ComparisonResults(),
              '/finish_request':(context)=>FinishRequest(),
       //    '/shipping_address':(context)=>   ShippingAddress(),


              '/terms_conditions':(context)=>TermsAndConditions(),
              '/privacy_policy':(context)=>PrivacyPolicy(),

              '/about_app':(context)=>AboutApp(),

              '/address_screen':(context)=>AddressesScreen(),
              '/product_details':(context)=>ProductDetails(),































            },
          );
        });
  }
}
