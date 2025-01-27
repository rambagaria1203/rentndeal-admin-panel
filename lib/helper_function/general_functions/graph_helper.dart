import 'package:flutter/material.dart';

class GraphHelpers {

  static DateTime getStartOfWeek(DateTime date) {
    final int daysUntilMonday = date.weekday -1;
    final DateTime startOfWeek = date.subtract(Duration(days: daysUntilMonday));
    return DateTime(startOfWeek.year, startOfWeek.month, startOfWeek.day, 0, 0, 0, 0);
  }
  //final category = ['Electronics', 'Appliances', 'Vehicles', 'Furnitures'];
  static Color getCategoryProductsColor(String cat) {
    if (cat == 'Electronics') {
      return Colors.blue;
    } else if (cat == 'Appliances') {
      return Colors.red;
    } else if (cat == 'Vehicles') {
      return Colors.green;
    } else if (cat == 'Furnitures') {
      return Colors.purple;
    } else {
      return Colors.grey;
    }
  }
}