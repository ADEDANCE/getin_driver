import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/reusable_widget/details_container.dart';
import 'package:getin_driver/reusable_widget/info_container.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D4CF5),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "My Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Color(0xFFFFFFFF),
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
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Color(0xFF9db0f5),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFF3D4CF5),
                          child: Text(
                            "DR",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Text(
                        "Alex Johnson",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 252, 241, 206),
                              // border: Border.all(color: Color, width: 1.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 3.w),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.workspace_premium,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "Top Driver",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: DetailsContainer(
                              iconmainAxisAlignment: MainAxisAlignment.center,
                              backgroundColor: Color.fromARGB(
                                255,
                                220,
                                226,
                                245,
                              ),
                              crossAxisAlignment: CrossAxisAlignment.center,
                              detailicon: Icon(
                                Icons.trending_up,
                                color: Color(0xFF3D4CF5),
                              ),
                              title: "247",
                              subtitle: "Total Rides",
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: DetailsContainer(
                              iconmainAxisAlignment: MainAxisAlignment.center,
                              backgroundColor: const Color.fromARGB(
                                255,
                                241,
                                248,
                                241,
                              ),
                              crossAxisAlignment: CrossAxisAlignment.center,
                              detailicon: Icon(
                                Icons.calendar_month,
                                color: Colors.green,
                              ),
                              title: "January 2025",
                              subtitle: "Member Since",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35.h),
                InfoContainer(
                  icon: Icon(Icons.person_2_outlined),
                  title: "Personal Information",
                  hitname: "Full Name",
                  name: "Alex johnson",
                  email: "alex.johnson@email.com",
                  phone: "+234 904-123-4567",
                  address: "123 Main Street, Downtown, CA 90210",
                ),
                SizedBox(height: 35.h),
                //Vehicle Information
                InfoContainer(
                  icon: Icon(Icons.directions_car),
                  title: "Vehicle Information",
                  hitname: "Vehicle Model",
                  name: "Toyota Camry 2020",
                  type: "Sedan",
                  license: "ABC 1234",
                  color: "Black",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
