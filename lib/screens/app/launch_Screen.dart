import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var delay = Duration(seconds: 2);
    Future.delayed(delay, () async {
       Navigator.pushReplacementNamed(context, '/on_boarding_screen');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF042D04),
              Color(0xFF0C7A0C),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 66.0.r,
                child: Image.asset(
                  'images/logo.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Text('store home',
                  style: GoogleFonts.parisienne(
                      fontSize: 54.sp,
                      color: Theme.of(context).scaffoldBackgroundColor)),
            ],
          ),
        ),
      ),
    );
  }
}
