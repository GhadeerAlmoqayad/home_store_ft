import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

import '../../widgets/custom_code_field.dart';

class PasswordCodeVertification extends StatefulWidget {
  const PasswordCodeVertification({Key? key}) : super(key: key);

  @override
  State<PasswordCodeVertification> createState() =>
      _PasswordCodeVertificationState();
}

class _PasswordCodeVertificationState extends State<PasswordCodeVertification> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(title: 'ttt'),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 13.w,vertical: 1.h),
          child: Column(
            children: [
              SizedBox(
                height: 125.h,
              ),
              SizedBox(
                height: 74.h,
                width: 229.w,
                child: Text(
                  'الرجاء ادخال كلمة الكود لتغيير كلمة المرور',
                  style: GoogleFonts.cairo(
                      color: AppConstants.primaryGreenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCodeField(),
                  CustomCodeField(),
                  CustomCodeField(),
                  CustomCodeField(),


                ],
              ),
              SizedBox(height: 226.h,),
              AppElevatedButton(text: 'تأكيد')
            ],
          ),
        ));
  }
}

