import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/utils/app_constants.dart';

class PreviousOrders extends StatefulWidget {
  const PreviousOrders({Key? key}) : super(key: key);

  @override
  State<PreviousOrders> createState() => _PreviousOrdersState();
}

class _PreviousOrdersState extends State<PreviousOrders> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 4.h),
        itemBuilder: (BuildContext context, int index) {
          return
            Row(
            children: [
              Container(
                width: 105.w,
                height: 105.h,
                child: Image(
                  image: AssetImage('images/imag22.png'),
                  width: 105.w,
                  height: 105.h,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Text(
                    'اسم الطلب',
                    style: GoogleFonts.cairo(
                        color: AppConstants.primaryGreenColor, fontSize: 14.sp),
                  ),
                  Text(
                    'السعر',
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryLightTextGreyColor, fontSize: 14.sp),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'الأحد',
                        style: GoogleFonts.cairo(
                            color: AppConstants.secondaryLightTextGreyColor, fontSize: 10.sp),
                      ),
                      Text(
                        "28/5/2023",
                        style: GoogleFonts.cairo(
                            color: AppConstants.secondaryLightTextGreyColor, fontSize: 10.sp),
                      ),
                      Text(
                        '11:00 pm',
                        style: GoogleFonts.cairo(
                            color: AppConstants.secondaryLightTextGreyColor, fontSize: 10.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 70.h,),
                  Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(25.r),
                      gradient: LinearGradient(colors: [
                        AppConstants.primaryGreenColor,
                        AppConstants.secondaryGreenColor,
                      ])
                    ),
                    child: ElevatedButton(onPressed: (){}, child: Text('إعادة الطلب', style: GoogleFonts.cairo(
                      fontSize: 14.sp,
                      color: Colors.white,

                    ),
                    ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(110.w, 30.h),
                        backgroundColor: Colors.transparent ,
                        elevation: 0,
                      ),
                    ),
                  )
                ],
              )
            ],
          );
          //   Container(
          //  //
          //   // child: ListTile(
          //   //   contentPadding: EdgeInsets.zero,
          //   //   leading: SizedBox(
          //   //     height: 105.h,
          //   //     width: 105.w,
          //   //     child: Image(
          //   //       image: AssetImage('images/imag22.png'),
          //   //       fit: BoxFit.cover,
          //   //
          //   //     ),
          //   //   ),
          //   // ),
          // );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: 20);
  }
}
