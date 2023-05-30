import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_constants.dart';


class backScreen extends StatefulWidget {
    backScreen({Key? key,}) : super(key: key);



  @override
  State<backScreen> createState() => _backScreenState();
}

class _backScreenState extends State<backScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: AppConstants.secondaryGreenColor,
        extendBodyBehindAppBar: true,
       // appBar: ,
        // here i want to change the app bar in every screen

        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: AppConstants.secondaryGreenColor),
          child: Column(
            children: [
              SizedBox(
                height: 105.h,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: AppConstants.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r),
                      )),
//child: ,
                // here i want to change the child in every screen
                ),
              )
            ],
          ),
        ));
  }
}
