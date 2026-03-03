import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoContainer extends StatelessWidget {
  final Icon icon;
  final String title;
  final String? hitname;
  final String? name;
  final String? email;
  final String? phone;
  final String? address;
  final String? type;
  // final String ? hitlicense;
  final String? license;
  // final String ? hitcolor;
  final String? color;
  const InfoContainer({
    super.key,
    required this.icon,
    required this.title,
    this.hitname,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.type,
    this.license,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2), // shadow color
            blurRadius: 10, // how soft the shadow is
            spreadRadius: 1, // how wide it spreads
            offset: Offset(0, 1), // position (x, y)
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          if (name != null) ...[
            SizedBox(height: 10.h),
            Text(
              hitname!,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 120, 120, 120),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              name!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],

          if (email != null) ...[
            SizedBox(height: 10.h),
            Text(
              "Email Address",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 120, 120, 120),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              email!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          if (phone != null) ...[
            SizedBox(height: 10.h),
            Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 120, 120, 120),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              phone!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          if (address != null) ...[
            SizedBox(height: 10.h),
            Text(
              "Address",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 120, 120, 120),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              address!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          if (type != null && license != null) ...[
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Type",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 120, 120, 120),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      type!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "License plate",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 120, 120, 120),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      license!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
          if (color != null) ...[
            SizedBox(height: 10.h),
            Text(
              "Color",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 120, 120, 120),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              color!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
