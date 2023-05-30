// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
// class MyDropDown extends StatelessWidget {
//   const MyDropDown(
//       {Key? key,
//         this.items = const ['Germany', 'USA', 'Japan', "Korea", "All cars"],
//         this.value,
//         this.borderRadius,
//         this.fillColor,
//         this.onChanged})
//       : super(key: key);
//
//   final List<String> items;
//   final String? value;
//   final double? borderRadius;
//   final Color? fillColor;
//   final void Function(String?)? onChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: fillColor ?? AppColors.backGroundItem,
//           contentPadding: EdgeInsetsDirectional.only(start: 20.w, end: 20.w),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
//             borderSide: BorderSide(width: 1.w, color: Colors.white),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
//             borderSide: BorderSide(
//               color: context.theme.primaryColor,
//               width: 0.5.w,
//             ),
//           ),
//         ),
//         isExpanded: true,
//         focusColor: Colors.white,
//         value: value,
//         style: TextStyle(
//           color: AppColors.color5,
//           fontSize: 18.sp,
//           fontWeight: FontWeight.w400,
//         ),
//         icon: RotatedBox(
//           quarterTurns: Get.locale!.languageCode == 'en' ? 3 : 1,
//           child: Icon(
//             Icons.arrow_back_ios,
//             size: 18.r,
//             color: AppColors.color5,
//           ),
//         ),
//         items: items.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(
//               value,
//               style: const TextStyle(color: AppColors.color5),
//             ),
//           );
//         }).toList(),
//         onChanged: (val) {}
//       // onChanged
//     );
//   }
// }