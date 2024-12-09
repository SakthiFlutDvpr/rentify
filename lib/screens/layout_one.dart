import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentify/models/house_model.dart';
import 'package:rentify/models/shorts_model.dart';
import 'package:rentify/utils/fill_button.dart';
import 'package:rentify/utils/house_model_widget.dart';
import 'package:rentify/utils/shorts_image.dart';

class LayoutOne extends StatelessWidget {
  const LayoutOne({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              color: const Color(0xFFF8F7FD),
              padding: EdgeInsets.all(20.r),
              height: MediaQuery.sizeOf(context).height * 0.23,
              width: MediaQuery.sizeOf(context).width,
              child: topWidget()),
          Container(
            padding: EdgeInsets.all(20.r),
            width: width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headlineText('Popular Location'),
                Container(
                  height: height * 0.25,
                  width: width,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      primary: true,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            height: height * 0.25,
                            width: width * 0.32,
                            child: ShortsImage(model: shortsModels[index]));
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10.w,
                        );
                      },
                      itemCount: shortsModels.length),
                ),
                headlineText('Recommended'),
                Container(
                  height: height * 0.38,
                  width: width,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: ListView.separated(
                      shrinkWrap: true,
                      primary: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            height: height * 0.38,
                            width: width * 0.65,
                            child:
                                HouseModelWidget(model: houseListOne[index]));
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 20.w,
                        );
                      },
                      itemCount: houseListOne.length),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  height: height * 0.40,
                  width: width,
                  padding: EdgeInsets.all(25.r),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      // color: Colors.blue,
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://plus.unsplash.com/premium_photo-1671358446946-8bd43ba08a6a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmVhdXRpZnVsJTIwcGxhY2VzfGVufDB8fDB8fHww'),
                          fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hosting Fee for \nas low as 1%',
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(width: width * 0.4, child: const FillButton()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                headlineText('Most Viewed'),
                SizedBox(
                  height: 15.h,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    primary: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: height * 0.37,
                          width: width * 0.90,
                          child: HouseModelWidget(model: houseListTwo[index]));
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 20.h,
                      );
                    },
                    itemCount: houseListTwo.length),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget topWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Explore the world!By \nTravelling',
            style: GoogleFonts.beVietnamPro(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide:
                          const BorderSide(width: 0, color: Colors.white)),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: SvgPicture.asset(
                      'assets/text_search.svg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  hintText: 'Where did you go?',
                  hintStyle:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              height: 45.h,
              width: 45.w,
              padding: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)),
              child: SvgPicture.asset(
                'assets/filter.svg',
              ),
            )
          ],
        )
      ],
    );
  }

  Widget headlineText(String text) {
    return Text(
      text,
      style: GoogleFonts.beVietnamPro(
          fontSize: 22.sp, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}
