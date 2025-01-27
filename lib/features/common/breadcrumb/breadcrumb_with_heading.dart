import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class BreadCrumbWithHeading extends StatelessWidget {
  const BreadCrumbWithHeading({super.key, required this.heading, required this.breadcrumbItems, this.returnToPreviousScreen = false});

  final String heading;
  final List<String> breadcrumbItems;
  final bool returnToPreviousScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: ()=> Get.offAllNamed(Routes.dashboard),
              child: Padding(
                padding: const EdgeInsets.all(CSizes.xs),
                child: Text('Dashboad', style: Theme.of(context).textTheme.bodySmall!.apply(fontWeightDelta: -1),),
              ),
            ),
            for(int i = 0; i < breadcrumbItems.length; i++)
              Row(
                children: [
                  const Text('/'),

                  InkWell(
                    onTap: i == breadcrumbItems.length - 1 ? null : ()=> Get.toNamed(breadcrumbItems[i]),
                    child: Padding(
                      padding: const EdgeInsets.all(CSizes.xs),

                      // Format breadcrumb item: capitalize and remove leading '/'
                      child: Text(i == breadcrumbItems.length - 1 ? breadcrumbItems[i].capitalize.toString() :  capitalize(breadcrumbItems[i].substring(1)), style: Theme.of(context).textTheme.bodySmall!.apply(fontWeightDelta: -1),),
                    ),
                  ),
                ]
              )
          ],
        ),
        const SizedBox(width: CSizes.sm),
        // Heading
        Row(
          children: [
            if(returnToPreviousScreen) IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)),
            if(returnToPreviousScreen) const SizedBox(width: CSizes.spaceBtwItems),
            Text(heading, style: Theme.of(context).textTheme.headlineLarge),
          ],
        )
      ]
    );
  }

  String capitalize(String s){
    return s.isEmpty ? '' : s[0].toUpperCase() + s.substring(1);
  }
}