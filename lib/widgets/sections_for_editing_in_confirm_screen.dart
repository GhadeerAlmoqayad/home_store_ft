import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionsForEditingInConfirmScreen extends StatelessWidget {
  const SectionsForEditingInConfirmScreen({
    required this.text,
    required this.iconEditing,
    required this.onTapEditing ,
    required this.iconDelete,
    required this.onTapDelete ,
    super.key,
  });

  final String text ;
  final IconData iconEditing;
  final void Function() onTapEditing ;
  final IconData iconDelete;
  final void Function() onTapDelete ;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text ,style: GoogleFonts.cairo(
          fontSize: 12.sp
              ,
          fontWeight: FontWeight.bold
        ),),
        Spacer(),
        InkWell(
          onTap: onTapEditing,
          child: Padding(
            padding: EdgeInsets.zero,
            child: Icon(iconEditing),
          ),
        ),
        InkWell(
          onTap: onTapDelete,
          child: Padding(
            padding: EdgeInsets.zero,
            child: Icon(iconDelete),
          ),
        ),
      ],
    );
  }
}
