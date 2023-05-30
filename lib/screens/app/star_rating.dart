import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';

class StarRating extends StatefulWidget {
  const StarRating({Key? key}) : super(key: key);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _rating = 0;

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: AppBar(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 65.h,
              ),
              Text(
                'الرجاء إضافة تقييم لخدمات التطبيق',
                style: GoogleFonts.cairo(
                  color: AppConstants.primaryGreenColor,
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 1; i <= 5; i++)
                    GestureDetector(
                      onTap: () => _setRating(i),
                      child: Icon(
                        _rating >= i ? Icons.star : Icons.star_border,
                        color: AppConstants.primaryGreenColor,
                      ),
                    ),
                ],
              ),
              Container(
                height: 123.h,
                width: 303.w,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),

                  gradient: LinearGradient(colors: [
                    AppConstants.primaryGreenColor,
                    AppConstants.secondaryGreenColor,                  ]),
                ),
                child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(184.w, 50.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        )
                    ),
                    child: Text(
                      "تسجيل الدخول",
                      style: GoogleFonts.cairo(),
                    )),
              )

            ],
          ),
        ));
  }
}
