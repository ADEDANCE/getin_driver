import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/onbarding/document_info.dart';
import 'package:getin_driver/onbarding/personal_info.dart';
import 'package:getin_driver/onbarding/vehicle_info.dart';
import 'package:getin_driver/reusable_widget/button_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  int currentStep = 1;

  Widget buildStepCircle({
    required int stepNumber,
    required Icon stepIcon,
    required Icon markIcon,
    required String title,
  }) {
    bool isActive = currentStep == stepNumber;
    bool isCompleted = currentStep > stepNumber;
    Color circleColor;
    if (isCompleted) {
      circleColor = Colors.green;
    } else if (isActive) {
      circleColor = Color(0xFF3D4CF5);
    } else {
      circleColor = Colors.grey.shade300;
    }
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: circleColor, shape: BoxShape.circle),
          child: Center(child: isCompleted ? markIcon : stepIcon),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Column(children: [Text("Driver Registration")])),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildStepCircle(
                          stepNumber: 1,
                          stepIcon: Icon(Icons.person),
                          markIcon: Icon(Icons.check, color: Colors.white),
                          title: "personal",
                        ),

                        buildStepCircle(
                          stepNumber: 2,
                          stepIcon: Icon(Icons.car_crash),
                          markIcon: Icon(Icons.check, color: Colors.white),
                          title: "Vehicle Info",
                        ),

                        buildStepCircle(
                          stepNumber: 3,
                          stepIcon: Icon(Icons.document_scanner_outlined),
                          markIcon: Icon(Icons.check, color: Colors.white),
                          title: "Documents",
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 5.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Row(
                        children: [
                          // first step
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 5.h,
                              decoration: BoxDecoration(
                                color: currentStep >= 1
                                    ? Color(0xFF3D4CF5)
                                    : Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          //second step
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 5.h,
                              decoration: BoxDecoration(
                                color: currentStep >= 2
                                    ? Color(0xFF3D4CF5)
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          //third step
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 5.h,
                              decoration: BoxDecoration(
                                color: currentStep >= 3
                                    ? Color(0xFF3D4CF5)
                                    : Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    currentStep == 1
                        ? PersonalInfo()
                        : currentStep == 2
                        ? VehicleInfo()
                        : DocumentInfo(),
                  ],
                ),
              ),
            ),
            ButtonWidget(
              onPressed: () {
                if (currentStep < 4) {
                  setState(() {
                    currentStep++;
                  });
                }
              },
              backgroundColor: Color(0xFF3D4CF5),
              height: 60,
              width: double.infinity,
              child: currentStep == 3
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit Application",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.check, color: Colors.white, size: 20),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Continue", style: TextStyle(color: Colors.white)),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
