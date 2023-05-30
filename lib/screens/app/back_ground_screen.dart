import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';
class BackGroundScreen extends StatefulWidget {
  final PreferredSizeWidget appBar;
  final Widget child;

  BackGroundScreen({required this.appBar, required this.child});

  @override
  _BackGroundScreenState createState() => _BackGroundScreenState();
}

class _BackGroundScreenState extends State<BackGroundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     // drawer: ,
      backgroundColor: AppConstants.primaryGreenColor,
      extendBodyBehindAppBar: true,
      appBar: widget.appBar,
      body: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: AppConstants.primaryGreenColor),
        child: Column(
          children: [
            SizedBox(
              height: 105.h,
            ),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: AppConstants.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.r),
                    topLeft: Radius.circular(30.r),
                  ),
                ),
                child: widget.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
