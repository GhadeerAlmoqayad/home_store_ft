import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';

import '../../../widgets/cart_add_remove_button.dart';
import '../../../widgets/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late TextEditingController _couponController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _couponController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: AlignmentDirectional.topEnd,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_forever),
                padding: EdgeInsets.zero,
              )),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 18.w),
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Row(
                      children: [
//Image(image: AssetImage('images/imag22.png'), width: 78.w,height: 73.h,)
                        Container(
                          width: 78.w,
                          height: 73.h,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            // boxShadow: [BoxShadow(blurRadius: 0)]
                          ),
                          child: Image(
                            image: AssetImage('images/imag22.png'),
                            width: 78.w,
                            height: 73.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Column(
                          children: [
                            Text(
                              "اسم المنتج",
                              style: GoogleFonts.cairo(
                                  fontSize: 12.sp, color: Colors.black),
                            ),
                            Text(
                              "25 ريال",
                              style: GoogleFonts.cairo(
                                  fontSize: 14.sp,
                                  color: AppConstants.primaryGreenColor),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          child: Column(
                            children: [
                              // CircleAvatar(
                              //
                              //   backgroundColor: AppConstants.primaryGreenColor,
                              //   radius: 8,
                              //   child: Center(
                              //     child: IconButton(
                              //       padding: EdgeInsets.zero,
                              //       icon: Icon(Icons.add),
                              //       iconSize: 14,
                              //       color: Colors.white,
                              //       onPressed: () {},
                              //     ),
                              //   ),
                              // ),
                              CartAddRemove(
                                iconData: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),

                              Text(
                                '1',
                                style:
                                    GoogleFonts.montserrat(fontSize: 18.sp),
                              ),
                              CartAddRemove(
                                iconData: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),

                          width: 34.w, // Set the desired width
                          height: 74.h, // Set the desired height
                          decoration: BoxDecoration(
                            color: AppConstants.cardBorder,
                            // Set the background color of the card
                            borderRadius: BorderRadius.circular(8),
                            // Set the border radius of the card
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                // Set the shadow color
                                spreadRadius: 0,
                                // Set the spread radius of the shadow
                                blurRadius: 0,
                                // Set the blur radius of the shadow
                                // offset:
                                //     Offset(0, 3), // Set the offset of the shadow
                              ),
                            ],
                          ),
                          // Additional card content
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(
                      thickness: 2,
                    ),
                itemCount: 10),
          ),
          SizedBox(height: 14.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "تفاصيل الطلب",
              style: GoogleFonts.cairo(
                  fontSize: 14.sp,
                  color: AppConstants.primaryGreenColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 13.h,),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'عدد الطلبات',
                      style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '2',
                      style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h,),

                Row(
                  children: [
                    Text(
                      'تكلفة الطلبات',
                      style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'SAR 5.00',
                      style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),

                Row(
                  children: [
                    Text(
                      'إضافة كوبون',
                      style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        color: AppConstants.primaryGreenColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    // Expanded(
                    //   child: TextField(
                    //     controller: _couponController,
                    //     decoration: InputDecoration(
                    //         contentPadding: EdgeInsets.symmetric(horizontal: 115.w , vertical: 33.h),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderSide: BorderSide(
                    //                 color: AppConstants.primaryGreenColor
                    //             )
                    //         ),
                    //       enabledBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //               color: AppConstants.primaryGreenColor
                    //           )
                    //
                    //       )
                    //     ),
                    //
                    //   ),
                    // )

                    SizedBox(
                      height: 33.h,
                      width: 115.w,
                      child: TextField(
                        controller: _couponController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.r),
                                borderSide: BorderSide(
                                    color: AppConstants.primaryGreenColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.r),
                                borderSide: BorderSide(
                                    color: AppConstants.primaryGreenColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.r),
                                borderSide: BorderSide(
                                    color: AppConstants.primaryGreenColor))),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 3,
                ),
                Row(
                  children: [
                    Text(
                      'إجمالي السعر',
                      style: GoogleFonts.cairo(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppConstants.primaryGreenColor),
                    ),
                    Spacer(),
                    Text(
                      '5.00',
                      style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width:5.w),
                    Text(
                      'SAR',
                      style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 110.h,),
                AppElevatedButton(text: "التالي"),
                SizedBox(height: 60.h,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
