import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsive({
    Key? key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);
// for mobile screen
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;
  // fot tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width > 850;
// for desktop screen
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 100) {
      return desktop!;
    } else if (size.width < 1100 && size.width > 850) {
      return tablet!;
    } else {
      return mobile!;
    }
  }
}
