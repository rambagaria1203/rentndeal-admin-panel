import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/header/header.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/sidebars/sidebar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: Sidebar()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // Header
                const Header(),
            
                // Body
                Expanded(child: body ?? const SizedBox())
              ]
            ),
          )
        ]
      ),
    );
  }
}