import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';

import '../../../utils/app_constants.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
 return SingleChildScrollView(
   padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),

   child: Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       ListTile(
         leading: CircleAvatar(
           radius: 30.r,
           child: Image(image: AssetImage('images/user_img.png')),
         ),
         title: Text(
           "اسم المستخدم",
           style: GoogleFonts.cairo(
               fontSize: 16.sp, fontWeight: FontWeight.bold),
         ),
         subtitle: Text(
           "User Name@gmail.com",
           style: GoogleFonts.cairo(
             fontSize: 12.sp,
           ),
         ),
       ),
       SizedBox(height: 50.h,),
       Text(
         "الاسم الأول",
         style: GoogleFonts.cairo(
           color: AppConstants.secondaryTextGreyColor,
           fontSize: 14.sp,
         ),
       ),
       TextField(
         readOnly: true,
         decoration: InputDecoration(

         ),
       ),
       Text(
         "الاسم العائلة",
         style: GoogleFonts.cairo(
           color: AppConstants.secondaryTextGreyColor,
           fontSize: 14.sp,
         ),
       ),
       TextField(
         readOnly: true,
         decoration: InputDecoration(

         ),
       ),
       Text(
         "رقم الهاتف",
         style: GoogleFonts.cairo(
           color: AppConstants.secondaryTextGreyColor,
           fontSize: 14.sp,
         ),
       ),
       TextField(
         readOnly: true,
         decoration: InputDecoration(

         ),
       ),
     ],
   ),
 );
  }
}
