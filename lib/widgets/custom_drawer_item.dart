import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    required this.title ,
    required this.iconData ,
    this.onTap,
    super.key,
  });


  final String title ;
  final IconData iconData;
  final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: Icon(iconData,color: Colors.white,),
      title:  Text(title,style: GoogleFonts.cairo(
          color: Colors.white,
          fontSize: 14.sp
      ),),
      onTap:onTap
    );
  }
}
