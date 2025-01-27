import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/containers/rounded_containers.dart';
import 'package:rentndeal_admin_panel/helper_function/general_functions/graph_helper.dart';

class ProductRows extends DataTableSource {
  final List<Product> _products =[
    Product(productId: '001', productName: 'Table', productDate: DateTime(2025, 01, 10) , productCategory: 'Furnitures', productAvailable: true),
    Product(productId: '002', productName: 'Pulsar NS200', productDate: DateTime(2024, 12, 10), productCategory: 'Vehicles', productAvailable: false),
    Product(productId: '003', productName: 'iPhone 15 Pro', productDate: DateTime(2024, 11, 05), productCategory: 'Electronics', productAvailable: true),
    Product(productId: '004', productName: 'BMW X5', productDate: DateTime(2024, 08, 10), productCategory: 'Vehicles', productAvailable: true),
    Product(productId: '005', productName: 'Bed', productDate: DateTime(2024, 10, 15), productCategory: 'Furnitures', productAvailable: false),
    Product(productId: '006', productName: 'Chair', productDate: DateTime(2024, 08, 08), productCategory: 'Furnitures', productAvailable: true),
    Product(productId: '007', productName: 'Washing Machine', productDate: DateTime(2024, 06, 10) , productCategory: 'Appliances', productAvailable: false),
  ];
  @override
  DataRow? getRow(int index) {
    // TODO: implement getRow
    return DataRow2(
      cells: [
        DataCell(Text(_products[index].productId, style: Theme.of(Get.context!).textTheme.bodyLarge!.apply(color: CColors.primary)),),
        DataCell(Text(_products[index].productName)),
        DataCell(Text(_products[index].productDate.toString())),
        DataCell(RoundedContainer(
          radius: CSizes.cardRadiusSm,
          padding: const EdgeInsets.symmetric(vertical: CSizes.xs, horizontal: CSizes.md),
          backgroundColor: GraphHelpers.getCategoryProductsColor(_products[index].productCategory).withOpacity(0.1),
          child: Text(
            _products[index].productCategory, style: TextStyle(color: GraphHelpers.getCategoryProductsColor(_products[index].productCategory),
          ),
        )
      )
        ),
        DataCell(Text(_products[index].productAvailable ? 'Yes' : 'No')),
        
      ],
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _products.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;

}

class Product{
  final String productId;
  final String productName;
  final DateTime productDate;
  final String productCategory;
  final bool productAvailable;

  Product({
    required this.productId,
    required this.productName,
    required this.productDate,
    required this.productCategory,
    required this.productAvailable,
  });
}