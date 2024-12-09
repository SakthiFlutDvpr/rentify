import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillButton extends StatelessWidget {
  const FillButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: const Color(0xffFF5A5F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r),
            )),
        child: Text(
          'Become a host',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ));
  }
}
