import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, required this.desktop, required this.tablet, required this.mobile});

  // Widget for Desktop Layout
  final Widget desktop;
  // Widget for Tablet Layout
  final Widget tablet;
  // Widget for Mobile Layout
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= 1366) {
          return desktop;
        } else if (constraints.maxWidth < 1366 && constraints.maxWidth >= 768) {
          return tablet;
        } else {
          return mobile;
        }
      }
    );
  }
}
