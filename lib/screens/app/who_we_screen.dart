import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/utils/app_constants.dart';

import 'back_ground_screen.dart';

class WhoAreScreen extends StatelessWidget {
  const WhoAreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: AppBar(
          title: Text("الشروط و الأحكام"),
          leading: Icon(Icons.arrow_back_ios),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "اسم التطبيق",
              style: GoogleFonts.cairo(
                  color: AppConstants.primaryGreenColor, fontSize: 17.sp),
            ),
            Text('''
    هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق
    
    '''),
          ],
        ));
  }
}
