import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCodeField extends StatelessWidget {
  const CustomCodeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      width: 65.w,
      child: TextField(
        onChanged: (value){
          if(value.length ==1){
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          border: OutlineInputBorder(),
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
