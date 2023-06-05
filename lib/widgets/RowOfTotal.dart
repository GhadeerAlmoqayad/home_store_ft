import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';

class RowOfTotal extends StatelessWidget {
  const RowOfTotal({
    required this.description ,
    required this.totalPrice ,
    super.key,
  });

  final String description ;
  final double totalPrice ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(

          description ,
          style: GoogleFonts.cairo(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryGreenColor),
        ),
        Spacer(),
        Text(
          '$totalPrice',
          style: GoogleFonts.cairo(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5.w),
        Text(
          'SAR',
          style: GoogleFonts.cairo(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
