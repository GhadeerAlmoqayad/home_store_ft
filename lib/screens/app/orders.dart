import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/screens/app/previous_orders.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

import '../../utils/app_constants.dart';
import '../auth/login_screen.dart';
import '../auth/register_screen.dart';
import 'current_orders.dart';


class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
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
    return BackGroundScreen(appBar: CustomAppBar(title: "طلباتي", leadingIcon: Icons.arrow_back_ios,), child:
    Column(
      children: [
        TabBar(

          controller: _tabController,

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
         //   controller: _tabController,
            tabs: [

              Tab(

                child: Text(
                  "طلباتي الحالية",
                  style: GoogleFonts.cairo(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "طلباتي السابقة",
                  style: GoogleFonts.cairo(
                    //color: _tabController == 0?AppConstants.primaryGreenColor:AppConstants.unselectedTextGreyColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
        Expanded(

          child:
          TabBarView(controller: _tabController,

              children: [
                CurrentOrders(),
            PreviousOrders(),
          ]),
        )
      ],
    ));
  }
}
