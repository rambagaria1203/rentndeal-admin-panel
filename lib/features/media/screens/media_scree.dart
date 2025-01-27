import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/site_layout.dart';
import 'package:rentndeal_admin_panel/features/media/screens/responsive_screen/media_desktop_screen.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(desktop: MediaDesktopScreen());
  }
}