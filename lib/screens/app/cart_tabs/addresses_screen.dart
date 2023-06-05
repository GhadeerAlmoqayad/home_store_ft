import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';

import '../../../utils/app_constants.dart';
import '../../../widgets/custom_app_bar.dart';

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({Key? key}) : super(key: key);

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {

  String? selectedValue ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 13.sp),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on),
                color: AppConstants.primaryGreenColor,
              ),
              TextButton(

                  onPressed: () {},
                  child: Text(
                    "تحديد العنوان عن طريق GPS",
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                    ),
                  )),
              Spacer(),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit,),
                color: AppConstants.primaryGreenColor,
              ),

            ],
          ),
          Divider(thickness: 2,endIndent:16.5.w , indent: 16.5.w, ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
              padding: EdgeInsets.zero,
              itemBuilder: (context,index){
            final value = 'Option $index';

            return RadioListTile<String>(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'شركة الشحن',
                    style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppConstants.secondaryTextGreyColor),
                  ),
                  Text(
                    'شركة الشحن',
                    style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppConstants.secondaryTextGreyColor),
                  ),
                  Text(
                    'شركة الشحن',
                    style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppConstants.secondaryTextGreyColor),
                  ),
                  Text(
                    'شركة الشحن',
                    style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppConstants.secondaryTextGreyColor),
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
            ) ;

          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 23.w,),
              Container(

                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add),
                    iconSize: 14,
                    color: Colors.white,
                    onPressed: (){},
                  ),
                ),
                decoration: BoxDecoration(


                  gradient: LinearGradient(colors: [
                    AppConstants.primaryGreenColor,
                    AppConstants.secondaryGreenColor,
                  ]),

                  borderRadius: BorderRadius.circular(11.r)
                  ,

                ),
                width: 22.w,
                height: 22.h,
              ),
              TextButton(onPressed: (){}, child: Text("إضافة عنوان جديد",style: GoogleFonts.cairo(
                fontSize: 14.sp,
                color: AppConstants.primaryGreenColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,

              ),))
            ],
          ),
          SizedBox(height: 30.h,),

          AppElevatedButton(text: "استخدام العنوان"),
          SizedBox(height: 30.h,),

        ],
      ),
    );
  }
}
