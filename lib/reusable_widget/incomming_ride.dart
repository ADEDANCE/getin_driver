import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/reusable_widget/button_widget.dart';

class IncommingRide extends StatelessWidget {
  const IncommingRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.amber, width: 1.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.amber,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xFF3D4CF5),
                      child: Text(
                        "EW",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Emma Wilson",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          SizedBox(width: 3.w),
                          Text(
                            "4.9",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,

                  // border: Border.all(color: Color, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.white, size: 18),
                    SizedBox(width: 3.w),
                    Text(
                      "5 min",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          //pickup location details
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.green, size: 18),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pickup",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF595957),
                    ),
                  ),
                  Text(
                    "789 Commerce Street, Financial District",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 15,
              child: VerticalDivider(color: Color(0xFF595957), thickness: 1),
            ),
          ),
          //destnation details
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.blueAccent,
                size: 18,
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dropoff",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF595957),
                    ),
                  ),
                  Text(
                    "456 Tech Park Avenue",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFced5de),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Transform.rotate(angle: -0.5, child: Icon(Icons.send)),
                    Text(
                      "Distance",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF595957),
                      ),
                    ),
                    Text(
                      "3.8 mi",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                  child: VerticalDivider(
                    color: Color(0xFF595957),
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.access_time),
                    Text(
                      "ETA",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF595957),
                      ),
                    ),
                    Text(
                      "3.8 mi",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                  child: VerticalDivider(
                    color: Color(0xFF595957),
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text("₦", style: TextStyle(color: Colors.green)),
                    Text(
                      "Fare",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF595957),
                      ),
                    ),
                    Text(
                      "₦18.75",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          ButtonWidget(
            onPressed: () {},
            backgroundColor: Colors.green,
            height: 50,
            width: double.infinity,
            child: Text(
              "Accept Ride",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
