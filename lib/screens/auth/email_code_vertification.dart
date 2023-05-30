import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_constants.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_code_field.dart';
import '../app/back_ground_screen.dart';

class EmailCodeVerification extends StatefulWidget {
  const EmailCodeVerification({Key? key}) : super(key: key);

  @override
  State<EmailCodeVerification> createState() => _EmailCodeVerificationState();
}

class _EmailCodeVerificationState extends State<EmailCodeVerification> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(title: 'تأكيد البريد الالكتروني'),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 1.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 125.h,
                ),
                Text(
                  'التحقق من البريد الالكتروني',
                  style: GoogleFonts.cairo(
                      color: AppConstants.primaryGreenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'لقد تم ارسال الرمز إلى بريدك الالكتروني',
                  style: GoogleFonts.cairo(fontSize: 16.sp),
                ),
                RichText(
                  text: TextSpan(
                    text: 'asdf12@gmail.com        ',
                    style: GoogleFonts.cairo(
                      color: Colors.black
                    ),

                    children:  <TextSpan>[

                      TextSpan(text: 'تغيير'),
                    ],
                  ),
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
                SizedBox(
                  height: 226.h,
                ),
                AppElevatedButton(text: 'تأكيد')
              ],
            ),
          ),
        ));
  }
}
