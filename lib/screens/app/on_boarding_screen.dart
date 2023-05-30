import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/on_boarding_content.dart';

import '../../widgets/app_elevated_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
          child: Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              Expanded(
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int currentPage) {
                    setState(() => _currentPage = currentPage);
                  },
                  controller: _pageController,
                  children: [
                    OnBoardingContent(
                        image: 'onboard1',
                        title: 'ابحث عن المتاجر القريبة',
                        subTitle: 'اطلب أفضل الأكلات والمنتجات  من الأر)'),
                    OnBoardingContent(
                        image: 'onboard2',
                        title: 'ابحث عن المتاجر القريبة',
                        subTitle: 'اطلب أفضل الأكلات والمنتجات  من الأر)'),
                    OnBoardingContent(
                        image: 'onboard3',
                        title: 'ابحث عن المتاجر القريبة',
                        subTitle: 'اطلب أفضل الأكلات والمنتجات  من الأر)'),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Visibility(
                    visible: _currentPage < 2,
                    replacement: AppElevatedButton(
                      text: "هيا نبدأ",
                      onPressed: (){
                        Navigator.pushNamed(context, '/auth_screen');
                      },
                    ),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {


                            },
                            child: Text(
                              "السابق",
                              style: GoogleFonts.cairo(
                                  color: AppConstants.unselectedTextGreyColor,
                                  fontSize: 16.sp),
                            )),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              _pageController.animateToPage(_currentPage + 1,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.easeInOutBack);
                            },
                            child: Text(
                              "التالي",
                              style: GoogleFonts.cairo(
                                  color: AppConstants.selectedTextGreenColor,
                                  fontSize: 16.sp),
                            )),
                      ],
                    )),
              ),
              SizedBox(
                height: 37.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
