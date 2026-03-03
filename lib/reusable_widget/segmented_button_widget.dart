import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SegmentedButtonWidget extends StatelessWidget {
  final VoidCallback onTap1;
  final Color color1;
  final String title1;
  final String? amount;
  final Color textcolor1;
  final VoidCallback onTap2;
  final Color color2;
  final String title2;
  final Color textcolor2;
  final VoidCallback? onTap3;
  final Color? color3;
  final String? title3;
  final Color? textcolor3;
  const SegmentedButtonWidget({
    super.key,
    required this.color1,
    required this.onTap1,
    required this.title1,
    this.amount,
    required this.textcolor1,
    required this.color2,
    required this.onTap2,
    required this.title2,
    required this.textcolor2,
    this.onTap3,
    this.color3,
    this.title3,
    this.textcolor3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xFFcacccf),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // First BUTTON
          Expanded(
            child: GestureDetector(
              onTap: onTap1,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title1,
                      style: TextStyle(
                        color: textcolor1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    if (amount != null) ...[
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          color: Colors.amber,
                        ),
                        child: Text(
                          amount!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),

          // Middle BUTTON
          Expanded(
            child: GestureDetector(
              onTap: onTap2,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  title2,
                  style: TextStyle(
                    color: textcolor2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // last Button
          if (textcolor3 != null) ...[
            Expanded(
              child: GestureDetector(
                onTap: onTap3,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: color3,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    title3!,
                    style: TextStyle(
                      color: textcolor3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
