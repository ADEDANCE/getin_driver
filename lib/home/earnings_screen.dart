import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/reusable_widget/details_container.dart';
import 'package:getin_driver/reusable_widget/past_rides.dart';
import 'package:getin_driver/reusable_widget/segmented_button_widget.dart';

class EarningsScreeng extends StatefulWidget {
  const EarningsScreeng({super.key});

  @override
  State<EarningsScreeng> createState() => _EarningsScreengState();
}

class _EarningsScreengState extends State<EarningsScreeng> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D4CF5),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "Earnings & History",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Color(0xFF3D4CF5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(
                              alpha: 0.2,
                            ), // shadow color
                            blurRadius: 10, // how soft the shadow is
                            spreadRadius: 1, // how wide it spreads
                            offset: Offset(0, 2), // position (x, y)
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Earnings",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 189, 188, 188),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "₦239,990.00",
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color.fromARGB(
                                  255,
                                  50,
                                  60,
                                  250,
                                ),
                                child: Text(
                                  "₦",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 35.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DetailsContainer(
                            iconmainAxisAlignment: MainAxisAlignment.start,
                            backgroundColor: Colors.white,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            detailicon: Icon(Icons.calendar_month),
                            icontext: "Today",
                            title: "₦39,990.00",
                            subtitle: "30 rides",
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: DetailsContainer(
                            iconmainAxisAlignment: MainAxisAlignment.start,
                            backgroundColor: Colors.white,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            detailicon: Icon(Icons.calendar_month),
                            icontext: "Avg Fare",
                            title: "₦1,333.00",
                            subtitle: "per ride",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18.h),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white),

              child: Column(
                children: [
                  SegmentedButtonWidget(
                    color1: selectedIndex == 0
                        ? Colors.white
                        : Color(0xFFcacccf),
                    onTap1: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    title1: "All",
                    textcolor1: Colors.black,
                    color2: selectedIndex == 1
                        ? Colors.white
                        : Color(0xFFcacccf),
                    onTap2: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    title2: "Today",
                    textcolor2: Colors.black,
                    title3: "This Week",
                    onTap3: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    textcolor3: Colors.black,
                    color3: selectedIndex == 2
                        ? Colors.white
                        : Color(0xFFcacccf),
                  ),
                  SizedBox(height: 30.h),
                  PastRides(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
