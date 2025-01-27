import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/sidebars/sidebar_controller.dart';
//import 'package:get/get_navigation/src/routes/observers/route_observer.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class RouteObservers extends GetObserver {

  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());

    if (previousRoute != null) {
      // Check the route name and update the active item in the sidebar accordingly
      for (var routeName in Routes.sidebarMenuItems) {
        if (previousRoute.settings.name == routeName) {
          sidebarController.activeItem.value = routeName;
        }
      }
    }
  }


  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());

    if (route != null) {
      // Check the route name and update the active item in the sidebar accordingly
      for (var routeName in Routes.sidebarMenuItems) {
        if (route.settings.name == routeName) {
          sidebarController.activeItem.value = routeName;
        }
      }
    }
  }

}