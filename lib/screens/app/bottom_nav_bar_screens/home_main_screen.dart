import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';

import '../../../utils/app_constants.dart';
import '../../../widgets/home_items.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            width: 355.w,
            height: 33.h,
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.filter_list_alt,
                  color: AppConstants.primaryGreenColor,
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
                  borderSide: BorderSide(color: AppConstants.textFieldBorder),
                  borderRadius: BorderRadius.circular(20.0.r),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0.r),
                  borderSide: BorderSide(color: AppConstants.textFieldBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0.r),
                  borderSide: BorderSide(color: AppConstants.textFieldBorder),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Row(
            children: [
              Text(
                'الأقسام',
                style: GoogleFonts.cairo(
                  fontSize: 14.sp,
                  color: AppConstants.primaryGreenColor,
                  decoration: TextDecoration.underline,

                ),
              ),
              Spacer(),
              Text('المزيد',style: GoogleFonts.cairo(
                color: AppConstants.secondaryTextGreyColor,
              ),)
            ],
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 92),
            child: GridView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                // mainAxisExtent: 90,
                childAspectRatio: 62 / 58,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 58.w
                      ,
                      height: 62.h,
                      color: Colors.black45,
                      child: Image(image: AssetImage('images/imag22.png'),
                        width: 58.w
                        ,
                        height: 62.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('data')
                  ],
                );
              },
            ),
          ),
          SizedBox(height:13.h),
          Text(
            'آخر المنتجات',
            style: GoogleFonts.cairo(
              fontSize: 14.sp,
              color: AppConstants.primaryGreenColor,
              decoration: TextDecoration.underline,

            ),
          ),

          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 240),
            child: GridView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                // mainAxisExtent: 90,
                childAspectRatio: 240 / 147,
              ),
              itemBuilder: (context, index) {
                return HomeItem();
              },
            ),
          ),
          SizedBox(height:20.h),

          Text(
            'الأكثر تقييما',
            style: GoogleFonts.cairo(
              fontSize: 14.sp,
              color: AppConstants.primaryGreenColor,
              decoration: TextDecoration.underline,

            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 240),
            child: GridView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                // mainAxisExtent: 90,
                childAspectRatio: 240 / 147,
              ),
              itemBuilder: (context, index) {
                return HomeItem();
              },
            ),
          ),



        ],
      ),
    );
  }
}
