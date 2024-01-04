import 'package:ecommerce/bottom_pages.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const Homepage(),
    const ProfilePage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
    );
  }
}
