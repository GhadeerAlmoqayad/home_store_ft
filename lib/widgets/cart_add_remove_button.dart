import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_constants.dart';

class CartAddRemove extends StatelessWidget {
  const CartAddRemove({
    required this.iconData,
    this.onPressed,
    super.key,
  });

  final void Function()? onPressed ;
  final Icon  iconData;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: iconData,
          iconSize: 14,
          color: Colors.white,
          onPressed: onPressed,
        ),
      ),
      decoration: BoxDecoration(


          gradient: LinearGradient(colors: [
            AppConstants.primaryGreenColor,
            AppConstants.secondaryGreenColor,
          ]),

          borderRadius: BorderRadius.circular(8.r)
          ,

      ),
      width: 16.w,
      height: 16.h,
    );
  }
}
