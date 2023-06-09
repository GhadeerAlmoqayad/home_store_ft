import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.title ,

    required this.hint ,
    this.prefixIcon,
    required this.keyboardType,
    required this.controller ,
    this.focusedBorderdColor ,
    this.obscureText =false ,
    this.suffixIcon,
    this.hasPrefixIcon = false ,

    super.key,
  });
  final String title ;

  final String hint ;
  final IconData? prefixIcon ;
  final TextInputType keyboardType ;
  final TextEditingController controller ;
  final Color? focusedBorderdColor;
  final Widget? suffixIcon ;
  final bool obscureText ;
  final bool hasPrefixIcon ;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.cairo(
            color: AppConstants.labelTextBlackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 14.h,),
        Container(
          width: 348.0.w,
          height: 35.0.h,
          child: TextField(
            keyboardType: keyboardType,
            obscureText: obscureText,
controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 2.w ,vertical: 0),
              prefixIcon:hasPrefixIcon ?Icon( prefixIcon , color: AppConstants.textFieldBorder):null,
                suffixIcon: suffixIcon,
                border: OutlineInputBorder(

                //  borderRadius:
                ),
                hintText:hint ,
                hintStyle:GoogleFonts.cairo(
color: AppConstants.textFieldBorder,

                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppConstants.textFieldBorder),
                    borderRadius: BorderRadius.circular(10.r)

                )  ,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppConstants.textFieldBorder),
                    borderRadius: BorderRadius.circular(10.r)

                ),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppConstants.textFieldBorder),
                    borderRadius: BorderRadius.circular(10.r)
                )



            ),
          ),
        )
      ],
    );
  }
}
