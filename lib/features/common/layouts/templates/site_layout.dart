import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/responsive/responsive_design.dart';
import 'package:rentndeal_admin_panel/features/common/responsive/screens_layout/desktop_layout.dart';
import 'package:rentndeal_admin_panel/features/common/responsive/screens_layout/mobile_layout.dart';
import 'package:rentndeal_admin_panel/features/common/responsive/screens_layout/tablet_layout.dart';

class SiteTemplate extends StatelessWidget {
  const SiteTemplate({super.key, this.desktop, this.tablet, this.mobile, this.useLayout = true});

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;

  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    print('*************************** Debug in Site template *****************************************');
    print('Loading Layout: Desktop');
print('Loading Layout: Tablet');
print('Loading Layout: Mobile');

    return Scaffold(
      
      body: ResponsiveWidget(
        desktop: useLayout ? DesktopLayout(body: desktop) : desktop ?? Container(), 
        tablet: useLayout ? TabletLayout(body: tablet ?? desktop) : tablet ?? desktop ?? Container(), 
        mobile: useLayout ? MobileLayout(body: mobile ?? desktop) : mobile ?? desktop ?? Container(),
      )
    );
  }
}