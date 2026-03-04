import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/reusable_widget/setting_container.dart';
import 'package:getin_driver/reusable_widget/settings_row.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isNotificationSwitched = false;
  bool isMessagesSwitched = false;
  bool isTipsSwitched = false;
  bool isSoundSwitched = false;
  bool isVibrationSwitched = false;
  bool isThemeSwitched = false;
  bool isLocationSwitched = false;
  bool isAutorideSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D4CF5),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "Settings",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SettingContainer(
                    icon: Icon(
                      Icons.notifications_outlined,
                      size: 22,
                      color: Color(0xFF3D4CF5),
                    ),
                    title: "Notifications",
                    child: Column(
                      children: [
                        SettingsRow(
                          title: "Ride Requests",
                          subtitle: "Get notified about new ride requests",
                          child: //toggle button
                          Transform.scale(
                            scale: 0.8,
                            child: Switch(
                              value: isNotificationSwitched,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              activeThumbColor: Colors.white,
                              activeTrackColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  isNotificationSwitched = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SettingsRow(
                          title: "Messages",
                          subtitle: "Notifications from riders",
                          child: //toggle button
                          Transform.scale(
                            scale: 0.8,
                            child: Switch(
                              value: isMessagesSwitched,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              activeThumbColor: Colors.white,
                              activeTrackColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  isMessagesSwitched = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SettingsRow(
                          title: "Promotions & Tips",
                          subtitle: "Special offers and earning tips",
                          child: //toggle button
                          Transform.scale(
                            scale: 0.8,
                            child: Switch(
                              value: isTipsSwitched,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              activeThumbColor: Colors.white,
                              activeTrackColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  isTipsSwitched = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SettingsRow(
                          titleicon: Icon(Icons.speaker_notes),
                          title: "Sound",
                          child: //toggle button
                          Transform.scale(
                            scale: 0.8,
                            child: Switch(
                              value: isSoundSwitched,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              activeThumbColor: Colors.white,
                              activeTrackColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  isSoundSwitched = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SettingsRow(
                          titleicon: Icon(Icons.vibration),
                          title: "Vibration",
                          child: //toggle button
                          Transform.scale(
                            scale: 0.8,
                            child: Switch(
                              value: isVibrationSwitched,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              activeThumbColor: Colors.white,
                              activeTrackColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  isVibrationSwitched = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  SettingContainer(
                    icon: Icon(
                      Icons.four_g_plus_mobiledata,
                      size: 22,
                      color: Color(0xFF3D4CF5),
                    ),
                    title: "Preferences",
                    child: SettingsRow(
                      title: "Ride Requests",
                      subtitle: "Get notified about new ride requests",
                      child: //toggle button
                      Transform.scale(
                        scale: 0.8,
                        child: Switch(
                          value: isThemeSwitched,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          activeThumbColor: Colors.white,
                          activeTrackColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              isThemeSwitched = value;
                            });
                          },
                        ),
                      ),
                    ),
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
