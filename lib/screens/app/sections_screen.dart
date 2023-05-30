import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/utils/app_constants.dart';

import '../../widgets/custom_app_bar.dart';
import 'back_ground_screen.dart';

class SectionsScreen extends StatefulWidget {
  const SectionsScreen({Key? key}) : super(key: key);

  @override
  State<SectionsScreen> createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(
          title: "الأقسام",
          leadingIcon: Icons.arrow_back_ios,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 355.w,
                height: 33.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.filter_list_alt,
                      color: AppConstants.textFieldBorder,
                    ),
                    contentPadding: EdgeInsets.zero,
                    hintText: "ابحث عن قسم",
                    hintStyle: GoogleFonts.cairo(
                        color: AppConstants.textFieldBorder, fontSize: 14.sp),
                    isDense: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppConstants.textFieldBorder,
                    ),
                    enabledBorder: OutlineInputBorder(
                      // borderSide: const BorderSide(width: 0, color: Colors.grey),
                      // borderSide: BorderSide.none,
                      borderSide:
                          BorderSide(color: AppConstants.textFieldBorder),
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                      borderSide:
                          BorderSide(color: AppConstants.textFieldBorder),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                      borderSide:
                          BorderSide(color: AppConstants.textFieldBorder),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                'الأقسام',
                style: GoogleFonts.cairo(
                  fontSize: 14.sp,
                  color: AppConstants.primaryGreenColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppConstants.primaryGreenColor,
                  decorationThickness: 2.0,
                ),
                // style: TextStyle(
                //
                //   decoration: TextDecoration.underline,
                //   decorationColor: AppConstants.primaryGreenColor,
                //   decorationThickness: 2.0,
                // ),
              ),
              SizedBox(
                height: 23.h,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 594.h),
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(

                            child: Container(
                              width: 73.0.w,
                              height: 80.0.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r)),
                              child:
                                  Image(image: AssetImage('images/imag22.png')),
                            ),
                            clipBehavior: Clip.antiAlias,
                            color: AppConstants.cardColor,
                            elevation: 0,

                          ),
                          Text('data')
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
