import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/images.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/Images_layout/circular_image.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/sidebars/menu/menu_item.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    print('Rendering Sidebar');
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(right: BorderSide(color: CColors.grey, width: 1))
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircularImage(width: 100, height: 100, image: CImages.imgAppLogo, backgroundColor: Colors.transparent,),
              const SizedBox(height: CSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(CSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Menu', style: Theme.of(context).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2),),

                    // Menu Items
                    const MenuItems(route: Routes.dashboard, icon: Iconsax.status, itemName: 'Dashboard'),
                    const MenuItems(route: Routes.media, icon: Iconsax.image, itemName: 'Media'),
                    const MenuItems(route: Routes.products, icon: Iconsax.picture_frame, itemName: 'Products'),
                  ],
                ),
                )
            ]
          ),
        ) ,
      ),
    );
  }
}

