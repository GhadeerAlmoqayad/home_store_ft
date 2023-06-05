import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_constants.dart';
import '../../widgets/favorite_products_items.dart';
import '../../widgets/rate_item.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _currentPage = 0;

  late PageController _pageController;

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
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        Container(
          height: 357.h,
          width: double.infinity,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            // physics: ClampingScrollPhysics(),
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int currentPage) {
              print('CurrentPage: $currentPage');
              print('CurrentPage: ${_pageController.page}');
              setState(() => _currentPage = currentPage);
            },

            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.black,
              )
            ],
          ),
        ),
        Positioned(
          top: 275.h,
          left: 0,
          right: 0,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppConstants.scaffoldBackgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.r),
                topLeft: Radius.circular(30.r),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabPageSelectorIndicator(
                        backgroundColor:
                            _currentPage == 0 ? Colors.black : Colors.grey,
                        borderColor: Colors.black45,
                        size: 10),
                    TabPageSelectorIndicator(
                        backgroundColor:
                            _currentPage == 1 ? Colors.black : Colors.grey,
                        borderColor: Colors.black45,
                        size: 10),
                    TabPageSelectorIndicator(
                        backgroundColor:
                            _currentPage == 2 ? Colors.black : Colors.grey,
                        borderColor: Colors.black45,
                        size: 10),
                  ],
                ),
                Text(
                  'اسم المنتج',
                  style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '2000',
                      style: GoogleFonts.cairo(
                        color: AppConstants.primaryGreenColor,
                        fontSize: 16.sp,
                      ),
                    ),
                    Spacer(),
                    RateItem(),
                  ],
                ),

              ],
            ),
          ),
        )
      ]),
    );
  }
}
