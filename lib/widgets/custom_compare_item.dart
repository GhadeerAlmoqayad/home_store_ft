import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCompareItem extends StatelessWidget {
  const CustomCompareItem({
    this.hasPrice = false ,
    super.key,
  });

  final bool hasPrice  ;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 78.w,
          height: 73.h,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5.r)),
          child: Image(
            image: AssetImage('images/imag22.png'),
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            Text(
              'اسم المنتج',
              style: GoogleFonts.cairo(fontSize: 12.sp),
            ),
            if (hasPrice)
            Text(
              'اسم المنتج',
              style: GoogleFonts.cairo(fontSize: 12.sp),
            ),

            Text(
              'اسم المنتج',
              style: GoogleFonts.cairo(fontSize: 12.sp),
            ),

          ],
        )
      ],
    );
  }
}
