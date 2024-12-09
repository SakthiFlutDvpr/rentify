import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/screens/home_screen.dart';

void main() {
  runApp(const ScreenUtilInit(
      designSize: Size(375, 812), minTextAdapt: true, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: GoogleFonts.beVietnamPro(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
          titleMedium: GoogleFonts.beVietnamPro(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
          labelMedium: GoogleFonts.beVietnamPro(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF686868)),
          labelSmall: GoogleFonts.beVietnamPro(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF686868)),
          bodyLarge: GoogleFonts.beVietnamPro(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
          bodyMedium: GoogleFonts.beVietnamPro(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
