import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';
import 'package:home_store_ft/widgets/app_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  String? selectedOption;

  List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  late TextEditingController _firstNamecontroller;

  late TextEditingController _famailyNameController;

  late TextEditingController _emailEditingController;

  late TextEditingController _passwordController;

  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _firstNamecontroller = TextEditingController();
    _famailyNameController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNamecontroller.dispose();
    _famailyNameController.dispose();
    _emailEditingController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextField(
              title: 'الاسم الأول',
              hint: 'الاسم الأول',
              prefixIcon: Icons.person,
              keyboardType: TextInputType.text,
              controller: _firstNamecontroller,
            ),
            SizedBox(
              height: 5.h,
            ),
            AppTextField(
              title: 'اسم العائلة',
              hint: 'اسم العائلة',
              prefixIcon: Icons.person,
              keyboardType: TextInputType.text,
              controller: _famailyNameController,
            ),
            SizedBox(
              height: 5.h,
            ),
            AppTextField(
              title: 'البريد الالكتروني',
              hint: 'البريد الالكتروني',
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              controller: _emailEditingController,
            ),
            SizedBox(
              height: 5.h,
            ),
            // TextFormField(
            //   controller: TextEditingController(text: selectedOption),
            //   decoration: InputDecoration(
            //     labelText: 'Choose an Option',
            //   ),
            //   readOnly: true,
            //   onTap: () {
            //     showDialog(
            //       context: context,
            //       builder: (BuildContext context) {
            //         return AlertDialog(
            //           title: Text('Select an Option'),
            //           content: Container(
            //             width: double.minPositive,
            //             child: DropdownButtonFormField<String>(
            //               value: selectedOption,
            //               onChanged: (String? value) {
            //                 setState(() {
            //                   selectedOption = value;
            //                 });
            //                 Navigator.of(context).pop();
            //               },
            //               items: options.map<DropdownMenuItem<String>>((String value) {
            //                 return DropdownMenuItem<String>(
            //                   value: value,
            //                   child: Text(value),
            //                 );
            //               }).toList(),
            //             ),
            //           ),
            //         );
            //       },
            //     );
            //   },
            // ),

          // DropdownButtonFormField(items: DropdownMenuItem(
          //
          // ), onChanged: onChanged)

            AppTextField(
              title: 'كلمة المرور',
              hint: 'كلمة المرور',
              prefixIcon: Icons.lock,
              keyboardType: TextInputType.text,
              controller: _passwordController,
            ),
            SizedBox(
              height: 5.h,
            ),
            AppTextField(
              title: 'تأكيد كلمة المرور',
              hint: 'تأكيد كلمة المرور',
              prefixIcon: Icons.lock,
              keyboardType: TextInputType.text,
              controller: _confirmPasswordController,
            ),
            SizedBox(
              height:38.h,
            ),
            AppElevatedButton(text: 'تسجيل جديد',onPressed: (){
              Navigator.pushNamed(context, '/email_code_verification');
            },)
          ],
        ),
      ),
    );
  }
}
