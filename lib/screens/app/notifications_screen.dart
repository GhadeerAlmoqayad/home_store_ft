import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(
          title: 'الاشعارات',
          leadingIcon: Icons.arrow_back_ios,
          onPressedLeading: (){
            Navigator.pop(context);
          },
        ),
        child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            itemCount: 20,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 134.h,
                width: 360.w,
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Positioned.fill(
                      child: SizedBox(
                        height: 82.h,
                        child: Card(

                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.r),
                              side: BorderSide(
                                  color: AppConstants.primaryGreenColor)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 27.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'اسم التنبيه',
                                  style: GoogleFonts.cairo(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'اسم التنبيه',
                                  style: GoogleFonts.cairo(
                                      fontSize: 14.sp,
                                      color:
                                          AppConstants.secondaryLightTextGreyColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13.w,
                      top: 0,

                      child: Container(

                        width: 50.w,
                        height: 52.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          gradient: LinearGradient(colors: [
                            AppConstants.primaryGreenColor,
                            AppConstants.secondaryGreenColor,
                          ])
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          color: Colors.transparent,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),

                             ),
                          child: Column(
                          children: [
                            Text('1'),
                            Text('Mar'),
                          ],
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
