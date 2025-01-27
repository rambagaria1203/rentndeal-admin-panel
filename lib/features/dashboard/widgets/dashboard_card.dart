import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/containers/rounded_containers.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.stats,
    this.icon = Iconsax.arrow_up_3,
    this.color = CColors.success,
    this.onTap
    });

    final String title, subTitle;
    final IconData icon;
    final Color color;
    final int stats;
    final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(CSizes.lg),
        child: Column(
          children: [
            //Heading
            Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: CColors.textPrimary), maxLines: 1, overflow: TextOverflow.ellipsis),
            const SizedBox(height: CSizes.spaceBtwSections),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subTitle, style: Theme.of(context).textTheme.headlineMedium),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Icon(icon, color: color, size: CSizes.iconSm),
                          Text('$stats%', style: Theme.of(context).textTheme.titleLarge!.apply(color: color), overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ),
                    SizedBox(width: 125, child: Text('Compared to Dec 2024', style: Theme.of(context).textTheme.labelMedium, overflow: TextOverflow.ellipsis)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}