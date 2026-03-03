import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PastRides extends StatelessWidget {
  const PastRides({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 165, 165, 165),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          showTrailingIcon: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xFF3D4CF5),
                    child: Text(
                      "EW",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
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
                              color: const Color.fromARGB(255, 108, 107, 107),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 108, 107, 107),
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
              Column(
                children: [
                  Text(
                    "₦18.75",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "+₦3 tip",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF595957),
                    ),
                  ),
                ],
              ),
            ],
          ),
          children: [
            Divider(),
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
          ],
        ),
      ),
    );
  }
}
