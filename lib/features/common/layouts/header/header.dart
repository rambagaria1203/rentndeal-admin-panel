import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/enums.dart';
import 'package:rentndeal_admin_panel/constants/images.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/authentication/controllers/user_controller.dart';
import 'package:rentndeal_admin_panel/features/common/Images_layout/rounded_image.dart';
import 'package:rentndeal_admin_panel/features/common/loaders/shimmer_effect.dart';
import 'package:rentndeal_admin_panel/helper_function/device/device_utility.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header ({super.key, this.scaffoldkey});

  // GlobalKey to access the Scaffold State
  final GlobalKey<ScaffoldState>? scaffoldkey;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Container(
      decoration: const BoxDecoration(
        color: CColors.white,
        border: Border(bottom: BorderSide(color: CColors.black, width: 1)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: CSizes.md, vertical: CSizes.sm),
      child: AppBar(
        backgroundColor: Colors.white,
        // Mobile Menu
        leading: !DeviceUtils.isDesktopScreen(context) ? IconButton(onPressed: () => scaffoldkey?.currentState?.openDrawer(), icon: const Icon(Iconsax.menu)) : null,
        
        // Search Field
        title: DeviceUtils.isDesktopScreen(context) ? SizedBox(
          width: 400,
          child: TextFormField(decoration: InputDecoration(prefixIcon: const Icon(Iconsax.search_normal_copy), hintText:'Search anything...' , enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),),),
        ): null,

        // Actions
        actions: [
          if(!DeviceUtils.isDesktopScreen(context)) IconButton(onPressed: (){}, icon: const Icon(Iconsax.search_normal_copy)),
          IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification)),
          const SizedBox(width: CSizes.spaceBtwItems / 2),

          // User Data
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RoundedImage(width: 40, padding: 2, height: 40, imageType: ImageType.asset, image: CImages.imgProfile),
              const SizedBox(width: CSizes.sm),
              // Name and email
              if (!DeviceUtils.isMobileScreen(context))
                Obx(
                  ()=> Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      controller.loading.value
                        ? const ShimmerEffect(width: 50, height: 13)
                        : Text(controller.user.value.fullName, style: Theme.of(context).textTheme.titleLarge,),
                      controller.loading.value
                        ? const ShimmerEffect(width: 50, height: 13)
                        : Text(controller.user.value.email, style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                )
            ]
          )
        ]
    ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight() + 15);
}