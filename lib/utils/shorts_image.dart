import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/models/shorts_model.dart';

class ShortsImage extends StatelessWidget {
  const ShortsImage({super.key, required this.model});

  final ShortsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(vertical: 25.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.blue,
          image: DecorationImage(
              image: NetworkImage(
                model.image,
              ),
              fit: BoxFit.fill)),
      child: Text(model.title,
          style: GoogleFonts.beVietnamPro(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white)),
    );
  }
}
