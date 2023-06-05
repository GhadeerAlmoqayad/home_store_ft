import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_constants.dart';
import '../../../widgets/app_elevated_button.dart';


class FinishRequest extends StatefulWidget {
  const FinishRequest({Key? key}) : super(key: key);

  @override
  State<FinishRequest> createState() => _FinishRequestState();
}

class _FinishRequestState extends State<FinishRequest> {
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding:  EdgeInsets.symmetric(horizontal: 13.w,vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image(image: AssetImage('images/conf_img.png'))),
          Text(
            'تم تأكيد الطلب بنجاح',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
          Text(
            'بامكانك مراجعة التفاصيل من هنا',
            style: GoogleFonts.cairo(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "تفاصيل الطلب",
              style: GoogleFonts.cairo(
                  color: AppConstants.primaryGreenColor,
                  decoration: TextDecoration.underline,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 90.h,),
          AppElevatedButton(text: "الرئيسية"),
          SizedBox(height: 35.h,)

        ],
      ),
    );
  }
}
