import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/breadcrumb/breadcrumb_with_heading.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class MediaDesktopScreen extends StatelessWidget {
  const MediaDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // BreadCrumbs
                  BreadCrumbWithHeading(heading: 'Media', breadcrumbItems: [Routes.login, Routes.forgetPassword, Routes.media],)
                ],
              ),
              SizedBox(height: CSizes.spaceBtwSections),
            ]
          ),
        ),
      ),
    );
  }
}