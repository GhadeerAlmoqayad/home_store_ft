import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';

import '../../../utils/app_constants.dart';
import '../../../widgets/custom_app_bar.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({Key? key}) : super(key: key);

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {

  String? selectedValue ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 0),
        child: Column(
          children: [
            ListView.builder(

              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                //   padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 0),
                padding: EdgeInsets.zero,
                itemCount: 6,
                itemBuilder: (context, index) {
                  final value = 'Option $index';
// return Card(
//
//   elevation: 0,
//   color: Colors.red,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
//     side: BorderSide(color: Colors.black, width: 5.0), // Set the border color and width
//   ),
//
// );
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 0),
                    child: Container(
                      width: 334.w,
                      height: 128.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: AppConstants.shippingCard,
                          width: 1.0,
                        ),
                      ),
                      child: RadioListTile<String>(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Row(
                              children: [
                                Text(
                                  'شركة الشحن',
                                  style: GoogleFonts.cairo(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppConstants.primaryGreenColor),
                                ),
                                Spacer(),

                                Text(
                                  'شركة الشحن',
                                  style: GoogleFonts.cairo(
                                    fontSize: 12.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),


                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "رسوم الشحن",
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
                            Row(
                              children: [
                                Text(
                                  'شروط الشحن',
                                  style: GoogleFonts.cairo(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppConstants.primaryGreenColor),
                                ),
                                Spacer(),

                                Text(
                                  'شروط الشحن',
                                  style: GoogleFonts.cairo(
                                    fontSize: 12.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),


                              ],
                            ),

                          ],
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue;
                            print("ccccccccccccccccccccccccccccccccccc");
                            print(value);
                          });
                        },
                        groupValue: selectedValue,
                        value: value,
                      ),
                    ),
                  );
                }),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      'رسوم الشحن',
                      style: GoogleFonts.cairo(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
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
                    SizedBox(width: 5.w),
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
                    SizedBox(width: 5.w),
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
              ],),
            ),

            SizedBox(
              height: 30.h,
            ),
            AppElevatedButton(text: "اختيار"),
            SizedBox(height: 80.h,)
          ],
        ),
      ),
    );
  }
}
