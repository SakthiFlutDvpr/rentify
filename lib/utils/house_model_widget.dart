import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentify/models/house_model.dart';

class HouseModelWidget extends StatelessWidget {
  const HouseModelWidget({super.key, required this.model});

  final HouseModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(20.r),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(model.image), fit: BoxFit.fill)),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                  padding: EdgeInsets.all(8.r),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r))),
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 27.sp,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    model.rent,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    '/${model.shift}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SvgPicture.asset(
                    'assets/thunder.svg',
                  ),
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: const Color(0xffFF5A5F),
                    size: 15.sp,
                  ),
                  Text(
                    model.rating.substring(0, 1),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                model.title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                model.desc,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        )
      ],
    );
  }
}
