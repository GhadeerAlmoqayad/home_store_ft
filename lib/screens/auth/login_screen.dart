import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/utils/app_constants.dart';

import '../../widgets/app_elevated_button.dart';
import '../../widgets/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;

  late TextEditingController _passwordController;

  bool obscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordController = TextEditingController();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldBackgroundColor,

      body: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              AppTextField(
                  title: 'أدخل البريد الالكتروني',
                  hint: 'البريد الالكتروني',
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController),
              SizedBox(
                height: 5.h,
              ),
              AppTextField(
                title: 'أدخل كلمة السر',
                hint: 'كلمة السر',
                prefixIcon: Icons.lock,
                keyboardType: TextInputType.text,
                controller: _passwordController,
                obscureText: true,
              ),
              Row(
                children: [
                  Text(
                    'تذكرني',
                    style: GoogleFonts.cairo(
                        color: AppConstants.secondaryLightTextGreyColor),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/email_reset_pass');
                      },
                      child: Text(
                        "نسيت كلمة المرور ؟",
                        style: GoogleFonts.cairo(
                            color: AppConstants.secondaryTextGreyColor),
                      ))
                ],
              ),
              AppElevatedButton(text: 'تسجيل دخول',)
            ],
          )),
    );
  }
}
