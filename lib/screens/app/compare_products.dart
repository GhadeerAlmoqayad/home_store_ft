import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/widgets/app_elevated_button.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

import '../../widgets/custom_compare_item.dart';

class CompareProducts extends StatefulWidget {
  const CompareProducts({Key? key}) : super(key: key);

  @override
  State<CompareProducts> createState() => _CompareProductsState();
}

class _CompareProductsState extends State<CompareProducts> {
  List<String> selectedValues = [];
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(title: "مقارنة المنتجات"

        ,
          leadingIcon: Icons.arrow_back_ios,
          onPressedLeading: (){
          Navigator.pop(context);
          },

        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 23.h),
          child: Column(
            children: [
              Row(children: [

                Checkbox(
                  onChanged: (bool? newValue) {
                    // Handle onChanged callback

                    setState(() {
                      if (newValue != null && newValue) {
                       // selectedValues.add(value);
                      } else {
                       // selectedValues.remove(value);
                      }
                    });
                  },
                  value: false, // Replace with your own value
                ),
                Text('اختيار المنتجات للمقارنة',style: GoogleFonts.cairo(
                  fontSize: 12.sp
                ),),

              ],),

              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final value = 'Option $index';

                      return CheckboxListTile(
                        onChanged: (bool? newValue) {
                          setState(() {
                            if (newValue != null && newValue) {
                              selectedValues.add(value);
                              print('vaaalueeee$value');
                            } else {
                              selectedValues.remove(value);
                            }
                          });
                        },
                        value: selectedValues.contains(value),


                        title:CustomCompareItem(),
                      );

                      // CustomCompareItem(hasPrice: true,)
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: 10),
              ),
              AppElevatedButton(text: "المقارنة",onPressed:

              (){
                Navigator.pushNamed(context, '/comparison_results');
              }

                ,)
            ],
          ),
        ));
  }
}
