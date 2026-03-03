import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsContainer extends StatelessWidget {
  final Color backgroundColor;
  final Icon detailicon;
  final String? icontext;
  final String title;
  final String subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment iconmainAxisAlignment;
  const DetailsContainer({
    super.key,
    required this.backgroundColor,
    required this.crossAxisAlignment,
    required this.detailicon,
    this.icontext,
    required this.title,
    required this.subtitle,
    required this.iconmainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16..r),
        color: backgroundColor,
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
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Row(
            mainAxisAlignment: iconmainAxisAlignment,

            children: [
              detailicon,
              Text(
                icontext ?? "",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    );
  }
}
