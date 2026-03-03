import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/reusable_widget/details_container.dart';
import 'package:getin_driver/reusable_widget/incomming_ride.dart';
import 'package:getin_driver/reusable_widget/past_rides.dart';
import 'package:getin_driver/reusable_widget/segmented_button_widget.dart';

class RideScreen extends StatefulWidget {
  const RideScreen({super.key});

  @override
  State<RideScreen> createState() => _RideScreenState();
}

class _RideScreenState extends State<RideScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D4CF5),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "My Rides",
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
              child: Row(
                children: [
                  Expanded(
                    child: DetailsContainer(
                      iconmainAxisAlignment: MainAxisAlignment.start,
                      backgroundColor: Colors.white,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      detailicon: Icon(
                        Icons.info_outline,
                        color: Colors.orange,
                      ),
                      title: "3",
                      subtitle: "Waiting for you",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DetailsContainer(
                      iconmainAxisAlignment: MainAxisAlignment.start,
                      backgroundColor: Colors.white,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      detailicon: Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                      ),
                      title: "5",
                      subtitle: "Total rides",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
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
                      title1: "Incoming",
                      amount: "3",
                      textcolor1: Colors.black,
                      color2: selectedIndex == 1
                          ? Colors.white
                          : Color(0xFFcacccf),
                      onTap2: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      title2: "Past Rides",
                      textcolor2: Colors.black,
                    ),
                    SizedBox(height: 30.h),
                    selectedIndex == 0 ? IncommingRide() : PastRides(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
