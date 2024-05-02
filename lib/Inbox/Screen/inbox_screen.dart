import 'package:checkinease/Inbox/widget/no_login_inbox.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {

  bool _isLogged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLogged ? 
      SizedBox() : NoInboxScreen(),
    );
  }
}