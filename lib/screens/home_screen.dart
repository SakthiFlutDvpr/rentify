import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentify/screens/layout_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: IndexedStack(
          index: index,
          children: [
            const LayoutOne(),
            Container(),
            Container(),
            Container(),
            Container()
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 70.h,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xffFF5A5F),
            unselectedItemColor: const Color(0xff686868),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: index,
            selectedLabelStyle: TextStyle(fontSize: 12.sp),
            elevation: 10,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(4.r),
                  child: SvgPicture.asset(
                    'assets/search.svg',
                  ),
                ),
                label: 'Explore',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(
                      width: 20.w,
                      height: 20.h,
                    ),
                    Positioned(
                      top: -35.h,
                      // left: 0,
                      child: Container(
                        padding: EdgeInsets.all(15.r),
                        decoration: const BoxDecoration(
                          color: Color(0xffFF5A5F),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          'assets/center_icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'Trips',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(2.r),
                  child: SvgPicture.asset(
                    'assets/chat.svg',
                  ),
                ),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(2.r),
                  child: SvgPicture.asset(
                    'assets/profile.svg',
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
