import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/header/header.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/sidebars/sidebar.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key, this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Sidebar(),
      appBar: Header(scaffoldkey: scaffoldKey),
      body: body ?? const SizedBox()
    );
  }
}