import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final Icon? titleicon;
  final String title;
  final String? subtitle;
  final Widget child;
  const SettingsRow({
    super.key,
    required this.title,
    this.subtitle,
    this.titleicon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (titleicon != null) ...[titleicon!],
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                if (subtitle != null) ...[
                  Text(
                    subtitle!,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 72, 71, 71),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
        child,
      ],
    );
  }
}
