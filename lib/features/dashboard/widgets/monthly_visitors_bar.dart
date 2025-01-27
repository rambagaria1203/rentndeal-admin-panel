import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/containers/rounded_containers.dart';
import 'package:rentndeal_admin_panel/helper_function/device/device_utility.dart';

class MontlyVisitorsBarGraph extends StatelessWidget {
  const MontlyVisitorsBarGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Column(
        children: [
          Text('Monthly Visitors', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: CSizes.spaceBtwSections),
    
          // Graph
          SizedBox(
            height: 400,
            child: BarChart(
              BarChartData(
                //titlesData: {},
                borderData: FlBorderData(show: true, border: const Border(top: BorderSide.none, right: BorderSide.none)),
                gridData: const FlGridData(show: true, drawHorizontalLine: true, drawVerticalLine: true, horizontalInterval: 200),
                groupsSpace: CSizes.spaceBtwItems,
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(getTooltipColor: (_) => CColors.secondary),
                  touchCallback: DeviceUtils.isDesktopScreen(context) ? (barTouchEvent, BarTouchResponse) {} : null,
                )
              )
            ),
          )
        ],
      ),
    );
  }
}