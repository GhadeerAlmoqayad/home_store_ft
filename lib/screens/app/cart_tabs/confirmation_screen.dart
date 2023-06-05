import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';

import '../../../widgets/RowOfTotal.dart';
import '../../../widgets/sections_for_editing_in_confirm_screen.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  bool isChecked = false;
  List<String> selectedValues = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 20.h),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text("المنتجات",style: GoogleFonts.cairo(
fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppConstants.cardColor
            ),
            width: 334.w,
            height: 243.h,
            child: Column(

              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(width: 51.w,),
                    Text(
                      'اسم المنتج',
                      style: GoogleFonts.cairo(fontSize: 12.sp),
                    ),
                    SizedBox(width: 49.w,),

                    Text(
                      'الكمية',
                      style: GoogleFonts.cairo(fontSize: 12.sp),
                    ),
                    SizedBox(width: 16.w,),

                    Text(
                      'السعر',
                      style: GoogleFonts.cairo(fontSize: 12.sp),
                    ),

                  ],
                ),
                Container(
                  height: 156.h,
                  width: 333.w,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: ListView.separated(

                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final value = 'Option $index';

                        return CheckboxListTile(
                         visualDensity:VisualDensity(horizontal: 0, vertical: -4),
                              contentPadding: EdgeInsets.zero,


                          onChanged: (bool? newValue) {
                            setState(() {
                              if (newValue != null && newValue) {
                                selectedValues.add(value);
                                print('vaaalueeee$value');
                              } else {
                                selectedValues.remove(value);
                              }
                            });
                          },
                          value: selectedValues.contains(value),
                          controlAffinity: ListTileControlAffinity.leading,
                          // Align checkbox to the leading position

                          title: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.zero,
                                height: 40.h,
                                width: 43.w,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5.r)),
                              ),
                              SizedBox(width: 15.w,),

                              Text(
                                'سعر المنتج',
                                style: GoogleFonts.cairo(fontSize: 12.sp),
                              ),
                              SizedBox(width: 39.w
                                ,),
                              Text(
                                '3',
                                style: GoogleFonts.cairo(fontSize: 12.sp,color: AppConstants.primaryGreenColor),
                              ),
                              SizedBox(width: 19.w,),
                              Text(
                                '33',
                                style: GoogleFonts.cairo(fontSize: 12.sp,color: AppConstants.primaryGreenColor),
                              ),

                              Text(
                                'ريال',
                                style: GoogleFonts.cairo(fontSize: 12.sp,color: AppConstants.primaryGreenColor),
                              ),

                              SizedBox(width: 20.w,),


                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(),
                      itemCount: 3),
                ),
                RowOfTotal(
                  description: "التوصيل",
                  totalPrice: 95550.00,
                ),

              ],
            ),
          ),
          SectionsForEditingInConfirmScreen(
            text: "الشحن",
            iconEditing: Icons.edit,
            onTapEditing: () {},
            iconDelete: Icons.delete,
            onTapDelete: () {},
          ),

          Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
              width: 334.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: AppConstants.shippingCard,
                  width: 1.0,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'ggggggggg',
                        style: GoogleFonts.cairo(fontSize: 12.sp),
                      ),
                      Spacer(),
                      Text(
                        'ggggggggg',
                        style: GoogleFonts.cairo(fontSize: 12.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'ggggggggg',
                        style: GoogleFonts.cairo(fontSize: 12.sp),
                      ),
                      Spacer(),
                      Text(
                        'ggggggggg',
                        style: GoogleFonts.cairo(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ],
              )),

          SectionsForEditingInConfirmScreen(
            text: "طريقة الدفع",
            iconEditing: Icons.edit,
            onTapEditing: () {},
            iconDelete: Icons.delete,
            onTapDelete: () {},
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
            width: 334.w,
            height: 55.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: AppConstants.shippingCard,
                width: 1.0,
              ),
            ),
            child: Row(
              children: [
                Text(
                  'ggggggggg',
                  style: GoogleFonts.cairo(),
                ),
                Spacer(),
                Text(
                  'ggggggggg',
                  style: GoogleFonts.cairo(),
                ),
              ],
            ),
          ),
          RowOfTotal(
            description: "التوصيل",
            totalPrice: 95550.00,
          ),
          RowOfTotal(
            description: "كوبون تخفيض",
            totalPrice: 95550.00,
          ),
          RowOfTotal(
            description: "اجمالي السعر",
            totalPrice: 95550.00,
          ),
          SizedBox(height: 38.h,),
          AppElevatedButton(text: "تأكيد الطلب",onPressed: (){
           // here i want to go to another screen
          },)
        ],
        
      ),
    );
  }
}
