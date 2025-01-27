import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rentndeal_admin_panel/helper_function/general_functions/general_bindings.dart';
import 'package:rentndeal_admin_panel/routes/app_routes.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rentndeal',
      getPages: AppRoutes.pages,
      initialBinding: GeneralBindings(),
      initialRoute: Routes.dashboard,
      unknownRoute: GetPage(name: '/Page-not-found', page: () => const Scaffold(body: Center(child: Text('Page Not Found'),),)),
    );
  }
}

// class ResponsiveDesignScreen extends StatelessWidget {
//   const ResponsiveDesignScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SiteTemplate(desktop: Desktop(), tablet: Tablet(), mobile: Mobile());
//   }
// }
