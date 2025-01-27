import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/containers/rounded_containers.dart';
import 'package:rentndeal_admin_panel/features/dashboard/widgets/available_products_graph.dart';
import 'package:rentndeal_admin_panel/features/dashboard/widgets/dashboard_card.dart';
import 'package:rentndeal_admin_panel/features/dashboard/widgets/monthly_visitors_bar.dart';
import 'package:rentndeal_admin_panel/features/dashboard/widgets/product_table/data_table.dart';

class DashboardTabletScreen extends StatelessWidget {
  const DashboardTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: CSizes.spaceBtwSections),

              // CARDS
              const Row(
                children: [
                  Expanded(child: DashboardCard(stats: 25, title: 'Sales total', subTitle: '\$365.6',)),
                  SizedBox(width: CSizes.spaceBtwItems),
                  Expanded(child: DashboardCard(stats: 24, title: 'Avg Order Value', subTitle: '\$35.6',)),
                ]
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              const Row(
                children: [
                  Expanded(child: DashboardCard(stats: 23, title: 'Total Products', subTitle: '\$25.6',)),
                  SizedBox(width: CSizes.spaceBtwItems),
                  Expanded(child: DashboardCard(stats: 22, title: 'Visitors', subTitle: '\$10',)),
                ]
              ),
              const SizedBox(height: CSizes.spaceBtwSections),

              // Bar Graph
              const MontlyVisitorsBarGraph(),
              const SizedBox(height: CSizes.spaceBtwSections),

              // Products
              RoundedContainer(
                backgroundColor: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Products', style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: CSizes.spaceBtwSections),
                    const DashboardProductTable(),
                  ]
                )
              ),
              const SizedBox(height: CSizes.spaceBtwSections),

              // Pie Chart
              const AvailableProductsPieChart()
            ],
          ),
        )
      ),
    );
  }
}