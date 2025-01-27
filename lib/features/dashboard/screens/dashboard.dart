import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/site_layout.dart';
import 'package:rentndeal_admin_panel/features/dashboard/screens/responsive_screen/dashboard_desktop.dart';
import 'package:rentndeal_admin_panel/features/dashboard/screens/responsive_screen/dashboard_mobile.dart';
import 'package:rentndeal_admin_panel/features/dashboard/screens/responsive_screen/dashboard_tablet.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(desktop: DashboardDesktopScreen(), tablet: DashboardTabletScreen(), mobile: DashboardMobileScreen(),);
  }
}