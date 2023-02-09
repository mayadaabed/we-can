import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/components/components.dart';
import '../../shared/components/custom_app_bar.dart';
import '../../style/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List imageList = ['assets/images/medical.jpg', 'assets/images/medical2.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const CustomAppBar(),
      body: ListView(
        padding: EdgeInsets.only(bottom: 50.h),
        children: [
          carousel(),
          Padding(
            padding: EdgeInsets.only(left: 26.w, top: 34.h, right: 26.w),
            child: RichText(
                textAlign: TextAlign.end,
                text: TextSpan(style: defaultTextStyle(), children: [
                  defaultText(
                    text: '”',
                    fontWeight: FontWeight.w700,
                  ),
                  defaultText(
                    text: 'خصم',
                    fontWeight: FontWeight.w700,
                  ),
                  defaultText(
                    text: '50',
                    color: blue,
                    fontWeight: FontWeight.w700,
                  ),
                  defaultText(
                    text: '% لمساهمي “الروضة وحولي',
                    fontWeight: FontWeight.w700,
                  ),
                ])),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, top: 20.h, right: 26.w),
            child: RichText(
                textAlign: TextAlign.end,
                text: TextSpan(style: defaultTextStyle(), children: [
                  defaultText(
                    text: ' مختبر مستوصف',
                    fontWeight: FontWeight.w700,
                  ),
                  defaultText(
                    text: ' بروفيشنال وي كير',
                    color: blue,
                    fontWeight: FontWeight.w700,
                  ),
                ])),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, top: 20.h, right: 26.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/rawda.png'),
                    SizedBox(
                      width: 13.w,
                    ),
                    Image.asset('assets/images/logo.png'),
                  ],
                ),
                defaultText2(
                    text: ':للتواصل والإستفسار',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: blue2),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w),
            child: defaultText2(
                text: '92219914', fontWeight: FontWeight.w700, fontSize: 17),
          ),
          Padding(
            padding: EdgeInsets.only(top: 70.h),
            child: socialMediaRow(),
          )
        ],
      ),
    );
  }

  Widget carousel() {
    return Column(
      children: [
        SizedBox(
          height: 19.h,
        ),
        CarouselSlider(
            items: imageList
                .map((item) => Container(
                      margin: EdgeInsets.only(left: 20.w, right: 20.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.asset(
                            item.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                height: 300.h,
                viewportFraction: 0.9,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 8),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.linearToEaseOut,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                })),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 18.0.w : 12.0.w,
                height: 12.0.h,
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 3.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(7.r),
                    color: blue.withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        )
      ],
    );
  }

  Widget socialMediaRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/icons/facebook.png'),
        SizedBox(
          width: 30.w,
        ),
        Image.asset('assets/icons/instagram.png'),
        SizedBox(
          width: 30.w,
        ),
        Image.asset('assets/icons/phone.png'),
      ],
    );
  }
}
