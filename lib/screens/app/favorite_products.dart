import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

class FavoriteProducts extends StatefulWidget {
  const FavoriteProducts({Key? key}) : super(key: key);

  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(
          title: 'منتجاتي المفضلة',
          leadingIcon: Icons.arrow_back_ios,
        ),
        child: GridView.builder(
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
              return Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: AppConstants.cardBorder,
                    ),
                    borderRadius: BorderRadius.circular(27.r)),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image(image: AssetImage('images/imag22.png')),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),


                      ],
                    ),
                    Text('اسم المنتج ',style: GoogleFonts.cairo(
                      color: AppConstants.secondaryLightTextGreyColor ,
                        fontSize: 14.sp

                    ),),
                    Text('السعر',style: GoogleFonts.cairo(
                        color: AppConstants.secondaryLightTextGreyColor ,
                        fontSize: 14.sp

                    ),),
Container(

  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.r),
      gradient: LinearGradient(colors:
      [
        AppConstants.primaryGreenColor,
        AppConstants.secondaryGreenColor,
      ]

      )
  ),


  child:   ElevatedButton(onPressed: (){}, child: Text("أضف للسلة",style: GoogleFonts.cairo(
    fontSize: 14.sp
  ),),style: ElevatedButton.styleFrom(

    backgroundColor: Colors.transparent ,

    elevation: 0 ,

  minimumSize: Size(112.w, 29.h),

      shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(15.r)

      )





  ),),
)
                  ],
                ),
              );
            })

    );
  }
}
