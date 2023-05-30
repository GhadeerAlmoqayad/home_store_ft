import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/auth/login_screen.dart';
import 'package:home_store_ft/screens/auth/register_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
          backgroundColor: AppConstants.secondaryGreenColor,
          extendBodyBehindAppBar: true,
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppConstants.secondaryGreenColor),
            child: Column(
              children: [
                SizedBox(
                  height: 105.h,
                ),
                Text(""),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppConstants.scaffoldBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.r),
                          topLeft: Radius.circular(30.r),
                        )),
                    child: Column(
                      children: [
                        TabBar(

                            indicator: UnderlineTabIndicator(
                              
                              borderSide: BorderSide(
                                
                                width: 5.0.w,
                                color: AppConstants.primaryGreenColor,
                              ),
                              borderRadius: BorderRadius.circular(5.r)

                            ),
                            labelColor: AppConstants.secondaryGreenColor,
                            unselectedLabelColor: AppConstants.unselectedTextGreyColor,
                            // indicator: BoxDecoration(
                            //    color: AppConstants.secondaryGreenColor,
                            //    borderRadius: BorderRadius.circular(10.r),
                            //  ),
                            indicatorColor: AppConstants.secondaryGreenColor,
                            indicatorWeight: 5,
                            indicatorSize: TabBarIndicatorSize.label,
                            onTap: (int selectedPageIndex) {},
                            controller: _tabController,
                            tabs: [
                              Tab(
                                child: Text(
                                  "تسجيل الدخول",
                                  style: GoogleFonts.cairo(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "تسجيل الدخول",
                                  style: GoogleFonts.cairo(
                                      //color: _tabController == 0?AppConstants.primaryGreenColor:AppConstants.unselectedTextGreyColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 501.h,
                          child:
                              TabBarView(controller: _tabController, children: [
                           LoginScreen(),
                                RegisterScreen(),
                          ]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
