import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(120.h),
        child: Padding(
          padding: EdgeInsets.only(top: 25.h),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: white,
            flexibleSpace: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset('assets/images/logo.png'),
                  SvgPicture.asset('assets/icons/arrow.svg'),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(120.h);
}
