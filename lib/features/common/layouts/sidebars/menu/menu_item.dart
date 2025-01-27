import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/sidebars/sidebar_controller.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key, required this.route, required this.icon, required this.itemName});

final String route;
final IconData icon;
final String itemName;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());

    return InkWell(
      onTap: ()=> menuController.menuOnTap(route),
      onHover: (hovering) => hovering ? menuController.changeHoverItem(route) : menuController.changeHoverItem(''),
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: CSizes.xs),
          child: Container(
            decoration: BoxDecoration(
              color: menuController.isHovering(route) || menuController.isActive(route) ? CColors.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(CSizes.cardRadiusMd),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon
                Padding(
                  padding: const EdgeInsets.only(left: CSizes.lg, top: CSizes.md, bottom: CSizes.md, right: CSizes.md),
                  child: menuController.isActive(route) ? Icon(icon, color: CColors.white, size: 22,) : Icon(icon, size: 22, color: menuController.isHovering(route) ? CColors.white: CColors.darkgrey),
                ),
                // Text
                if (menuController.isHovering(route) || menuController.isActive(route))
                  Flexible(child: Text(itemName, style: Theme.of(context).textTheme.bodyMedium!.apply(color: whiteColor),))
                else 
                  Flexible(child: Text(itemName, style: Theme.of(context).textTheme.bodyMedium!.apply(color: CColors.darkgrey),))
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}