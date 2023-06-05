import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import 'back_ground_screen.dart';


    class PrivacyPolicy extends StatelessWidget {
      const PrivacyPolicy({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return BackGroundScreen(
            appBar: CustomAppBar(
              title: "سياسة الخصوصية",
              leadingIcon: Icons.arrow_back_ios,
              onPressedLeading: (){
                Navigator.pop(context);
              },

            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('''
    هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق
    
    '''),
            )


        );
      }
    }
