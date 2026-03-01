import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_picker/file_picker.dart';

class DocumentInfo extends StatefulWidget {
  const DocumentInfo({super.key});

  @override
  State<DocumentInfo> createState() => _DocumentInfoState();
}

class _DocumentInfoState extends State<DocumentInfo> {
  // to store the document
  String? driversLicense;
  String? vehicleRegistration;
  String? selfieWithId;

  Future<void> pickFile(String type) async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        if (type == "license") {
          driversLicense = result.files.single.name;
        } else if (type == "vehicle") {
          vehicleRegistration = result.files.single.name;
        } else if (type == "selfie") {
          selfieWithId = result.files.single.name;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Upload Documents",
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
        Text(
          "We need to verify your documents",
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
            "Driver's License",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () => pickFile("license"),
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(16),
              dashPattern: [10, 5],
              strokeWidth: 2,
              padding: EdgeInsets.all(16),
            ),
            child: Container(
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    driversLicense == null
                        ? Icons.note_add_outlined
                        : Icons.check_circle,
                    color: driversLicense == null ? Colors.black : Colors.green,
                  ),
                  Text(
                    driversLicense ?? "Upload driver's license",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Vehicle Registration",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () => pickFile("vehicle"),
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(16),
              dashPattern: [10, 5],
              strokeWidth: 2,
              padding: EdgeInsets.all(16),
            ),
            child: Container(
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    vehicleRegistration == null
                        ? Icons.note_add_outlined
                        : Icons.check_circle,
                    color: vehicleRegistration == null
                        ? Colors.black
                        : Colors.green,
                  ),
                  Text(
                    vehicleRegistration ?? "Upload Vehicle Registration",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Selfie with ID (Optional)",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () => pickFile("selfie"),
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(16),
              dashPattern: [10, 5],
              strokeWidth: 2,
              padding: EdgeInsets.all(16),
            ),
            child: Container(
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    selfieWithId == null
                        ? Icons.camera_alt_outlined
                        : Icons.check_circle,
                    color: selfieWithId == null ? Colors.black : Colors.green,
                  ),
                  Text(
                    selfieWithId ?? "Upload selfie with ID",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
