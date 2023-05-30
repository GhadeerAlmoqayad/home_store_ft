import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';


class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.text
    ,
     this.onPressed ,
    super.key,
  });

  final String text ;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          gradient: LinearGradient(colors:
          [
            AppConstants.primaryGreenColor,
            AppConstants.secondaryGreenColor,
          ]

          )
      ),
      child: ElevatedButton(
        onPressed: onPressed, child: Text(text,style: GoogleFonts.cairo(
        color: Colors.white,
        fontSize: 18.sp ,
        fontWeight: FontWeight.bold
      ),),style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          minimumSize: Size(double.infinity, 50.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.r)
          )
      ),),
    );
  }
}
