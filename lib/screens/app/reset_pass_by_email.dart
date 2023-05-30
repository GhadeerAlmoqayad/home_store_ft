import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';
import 'package:home_store_ft/widgets/app_text_field.dart';

import '../../widgets/custom_app_bar.dart';
import 'back_ground_screen.dart';

class EmailResetPassword extends StatefulWidget {
  const EmailResetPassword({Key? key}) : super(key: key);

  @override
  State<EmailResetPassword> createState() => _EmailResetPasswordState();
}

class _EmailResetPasswordState extends State<EmailResetPassword> {

  late TextEditingController _emailController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios,
        title: '',
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 13.w,vertical: 13.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 89.h,),

            Text(
       "الرجاء ادخال البريد الالكتروني المسجل لاسترجاع كلمة المرور"
            
           , style: GoogleFonts.cairo(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryGreenColor,
            ),),
            SizedBox(height: 90.h,),
            AppTextField(title: 'البريد الالكتروني', hint: 'البريد الالكتروني', prefixIcon: Icons.email, keyboardType: TextInputType.text, controller: _emailController),
            SizedBox(height: 222.h,),
            AppElevatedButton(text: 'استرجاع'),
          ],
        ),
      ),
    );
  }
}
