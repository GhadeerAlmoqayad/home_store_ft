import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_constants.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/custom_app_bar.dart';
import '../app/back_ground_screen.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late TextEditingController _oldPasswordController ;
  late TextEditingController _newPasswordController ;
  late TextEditingController _resetPasswordController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     _oldPasswordController = TextEditingController();
     _newPasswordController= TextEditingController();
    _resetPasswordController= TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose

    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _resetPasswordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios,
        title: 'إعادة تعيين كلمة المرور',
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 13.w,vertical: 13.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 89.h,),

            Text(
              "كلمة المرور الجديدة"

              , style: GoogleFonts.cairo(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryGreenColor,
            ),),
            SizedBox(height: 90.h,),
            AppTextField(title: 'كلمة المرور القديمة', hint: 'كلمة المرور القديمة', prefixIcon: Icons.lock, keyboardType: TextInputType.text, controller: _oldPasswordController),
            SizedBox(height: 2.h,),

            AppTextField(title: 'كلمة المرور الجديدة', hint: 'كلمة المرور الجديدة', prefixIcon: Icons.lock, keyboardType: TextInputType.text, controller: _newPasswordController),
            SizedBox(height: 2.h,),

            AppTextField(title: 'إعادة كلمة المرور', hint: 'إعادة كلمة المرور', prefixIcon: Icons.lock, keyboardType: TextInputType.text, controller: _resetPasswordController),


            SizedBox(height: 171.h,),
            AppElevatedButton(text: 'استرجاع'),
          ],
        ),
      ),
    );  }
}
