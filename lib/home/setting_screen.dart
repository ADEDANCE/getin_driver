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
  bool isdataSwitched = false;

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
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
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
                      Divider(),
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
                      Divider(),
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
                      Divider(),
                      SettingsRow(
                        titleicon: Icon(
                          Icons.volume_up,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
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
                      Divider(),
                      SettingsRow(
                        titleicon: Icon(
                          Icons.vibration,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
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
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SettingContainer(
                  icon: Icon(Icons.public, size: 22, color: Color(0xFF3D4CF5)),
                  title: "Preferences",
                  child: Column(
                    children: [
                      SettingsRow(
                        titleicon: Icon(
                          Icons.dark_mode,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
                        title: "Dark Mode",
                        subtitle: "Use dark theme",
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
                      Divider(),
                      SettingsRow(
                        titleicon: Icon(
                          Icons.language,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
                        title: "Language",
                        subtitle: "English",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 72, 71, 71),
                          ),
                        ),
                      ),
                      Divider(),
                      SettingsRow(
                        titleicon: Icon(
                          Icons.location_on_outlined,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
                        title: "Share Location",
                        subtitle: "Allow location tracking",
                        child: //toggle button
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            value: isLocationSwitched,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            activeThumbColor: Colors.white,
                            activeTrackColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                isLocationSwitched = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Divider(),
                      SettingsRow(
                        title: "Auto Accept Rides",
                        subtitle: "Automatically accept incoming rides",
                        child: //toggle button
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            value: isAutorideSwitched,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            activeThumbColor: Colors.white,
                            activeTrackColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                isAutorideSwitched = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SettingContainer(
                  icon: Icon(
                    Icons.privacy_tip,
                    size: 22,
                    color: Color(0xFF3D4CF5),
                  ),
                  title: "Privacy & Security",
                  child: Column(
                    children: [
                      SettingsRow(
                        title: "Data Collection",
                        subtitle: "Help improve app experience",
                        child: //toggle button
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            value: isdataSwitched,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            activeThumbColor: Colors.white,
                            activeTrackColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                isdataSwitched = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Divider(),
                      SettingsRow(
                        titleicon: Icon(
                          Icons.language,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
                        title: "Change Password",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 72, 71, 71),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                SettingContainer(
                  icon: Icon(
                    Icons.help_outline,
                    size: 22,
                    color: Color(0xFF3D4CF5),
                  ),
                  title: "Support & Legal",
                  child: Column(
                    children: [
                      SettingsRow(
                        titleicon: Icon(
                          Icons.help_outline,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
                        title: "Help Center",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 72, 71, 71),
                          ),
                        ),
                      ),
                      Divider(),
                      SettingsRow(
                        titleicon: Icon(
                          Icons.help_outline,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
                        title: "Terms of Service",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 72, 71, 71),
                          ),
                        ),
                      ),
                      Divider(),
                      SettingsRow(
                        titleicon: Icon(
                          Icons.help_outline,
                          color: Color.fromARGB(255, 72, 71, 71),
                        ),
                        title: "Privacy Policy",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 72, 71, 71),
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Color(0xFFe9eaf2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "App Version",
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 72, 71, 71),
                              ),
                            ),
                            Text(
                              "GETIN Drive v1.0.0",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
