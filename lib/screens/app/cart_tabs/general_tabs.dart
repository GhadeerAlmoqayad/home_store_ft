import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/screens/app/cart_tabs/shipping_Screen.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

import '../../../utils/app_constants.dart';
import '../../auth/login_screen.dart';
import '../../auth/register_screen.dart';
import 'cart_screen.dart';

class GeneralTabs extends StatefulWidget {
  const GeneralTabs({Key? key}) : super(key: key);

  @override
  State<GeneralTabs> createState() => _GeneralTabsState();
}

class _GeneralTabsState extends State<GeneralTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(_handleTabChange);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.removeListener(_handleTabChange);

    _tabController.dispose();
    super.dispose();
  }
  void _handleTabChange() {
    setState(() {
      // Update the title when the tab index changes
   //   _appBarTitle = _getTabTitle(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
      appBar: CustomAppBar(title: _getTabTitle(_tabController.index)),
      child: Column(
        children: [
          TabBar(
              indicator:

              // BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: Colors.green,
              //   borderRadius: BorderRadius.circular(1.r)
              // ),


              UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 1.0.w,
                    color: AppConstants.primaryGreenColor,
                  ),
                  borderRadius: BorderRadius.circular(5.r)),
              labelColor: AppConstants.secondaryGreenColor,
              unselectedLabelColor: AppConstants.unselectedTextGreyColor,
              // indicator: BoxDecoration(
              //    color: AppConstants.secondaryGreenColor,
              //    borderRadius: BorderRadius.circular(10.r),
              //  ),
              indicatorColor: AppConstants.secondaryGreenColor,
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              onTap: (int selectedPageIndex) {

                setState(() {
                  _tabController.index = selectedPageIndex;
                });

              },
                        controller: _tabController,
              tabs: [
                Tab(
                  child: Text(
                    "السلة",
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryGreenColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "العنوان",
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryGreenColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "الشحن",
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryGreenColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "الدفع",
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryGreenColor,
                        //color: _tabController == 0?AppConstants.primaryGreenColor:AppConstants.unselectedTextGreyColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "تأكيد",
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryGreenColor,
                        //color: _tabController == 0?AppConstants.primaryGreenColor:AppConstants.unselectedTextGreyColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "إنهاء",
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryGreenColor,
                        //color: _tabController == 0?AppConstants.primaryGreenColor:AppConstants.unselectedTextGreyColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
          SizedBox(
            height: 650.h,
            child: TabBarView(


                controller: _tabController, children: [
CartScreen(),
              RegisterScreen(),
              ShippingScreen(),
              RegisterScreen(),
              LoginScreen(),
              RegisterScreen(),
            ]),
          )
        ],
      ),
    );
  }


  String _getTabTitle(int index) {
    switch (index) {
      case 0:
        return "السلة";
      case 1:
        return "عنوان الشحن";
      case 2:
        return "الشحن";
      case 3:
        return "بطاقة الدفع";
      case 4:
        return "تأكيد االطلب";
      case 5:
        return "إنهاء الطلب";
      default:
        return "";
    }
  }
}
