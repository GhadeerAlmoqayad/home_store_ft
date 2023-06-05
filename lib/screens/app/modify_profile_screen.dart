import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/widgets/app_text_field.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

class ModifyProfile extends StatefulWidget {
  const ModifyProfile({Key? key}) : super(key: key);

  @override
  State<ModifyProfile> createState() => _ModifyProfileState();
}

class _ModifyProfileState extends State<ModifyProfile> {

  late TextEditingController _firstNameController ;
  late TextEditingController _familyNameController ;

  late TextEditingController _phoneNumberController ;
  late TextEditingController _emailController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameController = TextEditingController();
    _familyNameController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _emailController  = TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose

    _firstNameController.dispose();
    _familyNameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: AppBar(
          title: Text("تعديل الملف الشخصي"),
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
          actions: [
            TextButton(onPressed: (){}, child: Text("حفظ", style: GoogleFonts.cairo(
              fontSize: 14.sp,
              color: Colors.white
            ),))
          ],
        ),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 13.w,vertical: 30.h),
              child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
AppTextField(title: 'الاسم كاملا', hint: "الاسم", keyboardType:TextInputType.text , controller: _firstNameController, ),
                AppTextField(title: "اسم العائلة", hint: "اسم العائلة", keyboardType: TextInputType.text, controller: _familyNameController),
                AppTextField(title: 'رقم الهاتف', hint: "رقم الهاتف", keyboardType: TextInputType.text, controller: _phoneNumberController),
                AppTextField(title: "الايميل", hint: "الايميل", keyboardType: TextInputType.emailAddress, controller: _emailController)
              ],
          ),
            )
        ));
  }
}
