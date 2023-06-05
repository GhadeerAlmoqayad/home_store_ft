import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';
import 'package:home_store_ft/widgets/custom_compare_item.dart';

import '../../widgets/favorite_products_items.dart';

class ComparisonResults extends StatefulWidget {
  const ComparisonResults({Key? key}) : super(key: key);

  @override
  State<ComparisonResults> createState() => _ComparisonResultsState();
}

class _ComparisonResultsState extends State<ComparisonResults> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(title: "نتائج المقارنة",
        leadingIcon: Icons.arrow_back_ios,
          onPressedLeading: (){
          Navigator.pop(context);
          },


        ),
        child: SingleChildScrollView(

          scrollDirection: Axis.vertical,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 13.w ,vertical: 33.h),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (context, index) {
                      return CustomCompareItem(
                        hasPrice: true,
                      );
                      // لو بدي مسافة بينه وبين الديفايدر ححط الايتم بعمود وفيه سايزد بوكس
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: 10),
                Text('منتجات ذات صلة',style: GoogleFonts.cairo(
fontSize: 12.sp,
                  fontWeight: FontWeight.bold ,
                  color: Colors.black
                ),),

                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 9,
                      mainAxisSpacing: 14,
                      childAspectRatio: 166.w / 304.h,
                    ),
                    itemBuilder: (context, index) {
                      return FavoriteProductsItem();
                    })
              ],
            ),
          ),
        ));
  }
}
