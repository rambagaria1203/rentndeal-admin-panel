import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/containers/circular_container.dart';
import 'package:rentndeal_admin_panel/helper_function/general_functions/graph_helper.dart';

class AvailableProductsPieChart extends StatelessWidget {
  const AvailableProductsPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Available Products', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: CSizes.spaceBtwSections),
        
            // Graph
            SizedBox(
              height: 400,
              child: PieChart(
                PieChartData(
                  sections:DummyData.pieChart().entries.map((entry){
                    final cat = entry.key;
                    final count = entry.value;
                    return PieChartSectionData(
                      title: cat.toString(),
                      value: count.toDouble(),
                      radius: 80,
                      color: GraphHelpers.getCategoryProductsColor(cat),
                      titleStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    );
                  }).toList(),
                  pieTouchData: PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  },
                  enabled: true
                )
              ),
            )
            ),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Category'),),
                  DataColumn(label: Text('Product Count'),),
                ],
                rows: DummyData.pieChart().entries.map((entry) {
                  final String cat = entry.key;
                  final int count = entry.value;
                  return DataRow(
                    cells: [DataCell(
                      Row(
                        children: [
                          CircularContainer(width: 20, height: 20, backgroundColor: GraphHelpers.getCategoryProductsColor(cat)),
                          const SizedBox(width: CSizes.defaultSpace / 2),
                          Text(cat, style: Theme.of(context).textTheme.bodyMedium)
                        ]
                      )
                    ),
                    DataCell(Text(count.toString())),
                    ] 
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class DummyData{
  static Map<String, int> pieChart(){
    return {
      'Electronics': 30,
      'Appliances': 100,
      'Vehicles': 80,
      'Furnitures': 50,
    };
  }
}