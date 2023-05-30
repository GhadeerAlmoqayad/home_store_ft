import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';
import 'package:home_store_ft/widgets/app_text_field.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

class AddShippingAddress extends StatefulWidget {
  const AddShippingAddress({Key? key}) : super(key: key);

  @override
  State<AddShippingAddress> createState() => _AddShippingAddressState();
}

class _AddShippingAddressState extends State<AddShippingAddress> {



  late TextEditingController _nameController;

  late TextEditingController _mobileController;

  late TextEditingController _cityController;

  late TextEditingController _neighborhoodController;

  late TextEditingController _addressDisController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _nameController = TextEditingController();
    _mobileController = TextEditingController();
    _cityController = TextEditingController();
    _neighborhoodController = TextEditingController();
    _addressDisController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _mobileController.dispose();
    _cityController.dispose();
    _neighborhoodController.dispose();
    _addressDisController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(
          title: 'عنوان الشحن',
          leadingIcon: Icons.arrow_back_ios,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'hhhhhhhhhhhhhhhhh',
                style: GoogleFonts.cairo(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(thickness: 3,),
              AppTextField(title: 'الاسم كامل', hint: 'الاسم كامل',  keyboardType: TextInputType.text, controller: _nameController),
              AppTextField(title: 'رقم الجوال', hint: 'رقم الجوال', keyboardType: TextInputType.text, controller: _mobileController),
              AppTextField(title: 'المدينة', hint: "المدينة", keyboardType: TextInputType.text, controller: _cityController),
              AppTextField(title: 'الحي', hint: "الحي", keyboardType: TextInputType.text, controller: _neighborhoodController),
              TextField(
                maxLines: 10,
                controller: _addressDisController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  focusedBorder: OutlineInputBorder(

                  ),
                  enabledBorder: OutlineInputBorder(

                  ),



                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.map),color: AppConstants.primaryGreenColor,),
                  TextButton(onPressed: (){}, child: Text("تحديد العنوان عن طريق GPS", style: GoogleFonts.cairo(
                    color: Colors.black,
                  ),))
                ],
              ),
              AppElevatedButton(text: 'أضف عنوان جديد'),

            ],
          ),
        ));
  }
}
