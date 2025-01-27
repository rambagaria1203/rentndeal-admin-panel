import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/data_table/paginated_data_table.dart';
import 'package:rentndeal_admin_panel/features/dashboard/widgets/product_table/table_source.dart';

class DashboardProductTable extends StatelessWidget {
  const DashboardProductTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
      columns: const [
        DataColumn2(label: Text('Product ID')),
        DataColumn2(label: Text('Product Name')),
        DataColumn2(label: Text('Date')),
        DataColumn2(label: Text('Product Category')),
        DataColumn2(label: Text('Product Available')),

      ], 
      source: ProductRows()
    );
  }
}