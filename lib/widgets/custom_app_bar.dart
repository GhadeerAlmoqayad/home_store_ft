import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
     required this.title,
    this.leadingIcon,
    this.actionIcon,
    super.key,
  });

  final String title  ;
  final IconData? leadingIcon ;
  final IconData? actionIcon ;

  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading: IconButton(
          icon:  Icon(leadingIcon, color: Colors.white),
          onPressed: () {}),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(actionIcon ))

      ],
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: GoogleFonts.cairo(
          fontSize: 18.sp,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.h);
}
