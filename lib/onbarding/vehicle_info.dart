import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/reusable_sidget/textfied_widget.dart';

class VehicleInfo extends StatefulWidget {
  const VehicleInfo({super.key});

  @override
  State<VehicleInfo> createState() => _VehicleInfoState();
}

class _VehicleInfoState extends State<VehicleInfo> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _numbercontroller = TextEditingController();
  final TextEditingController _modelcontroller = TextEditingController();
  final TextEditingController _colorcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Vehicle Information",
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
        Text(
          "Tell us about your vehicle",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Vehicle Name",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        TextfiedWidget(
          controller: _namecontroller,
          hintText: "Enter Your full name",
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Licensse Plate Number",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextfiedWidget(
          controller: _numbercontroller,
          hintText: "ABC 0494",
          issuffixIcon: true,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Vehicle Model",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextfiedWidget(
          controller: _modelcontroller,
          hintText: "e,g, Toyota Camry 2020",
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Vehicle Color",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        TextfiedWidget(controller: _colorcontroller, hintText: "e.g., Black"),
      ],
    );
  }
}
