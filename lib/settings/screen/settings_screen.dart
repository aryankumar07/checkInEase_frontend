import 'package:checkinease/settings/widget/login_on.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool _isLoggedIN = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoggedIN ? 
      SizedBox() : NotLogin()
    );
  }
}
