import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/images.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/common/loaders/animation_loader.dart';

class CustomPaginatedDataTable  extends StatelessWidget{
  const CustomPaginatedDataTable ({
    super.key,
    required this.columns,
    required this.source,
    this.rowsPerPage = 10,
    this.tableHeight = 760,
    this.onPageChanged,
    this.sortColumnIndex,
    this.dataRowHeight = CSizes.xl * 2,
    this.sortAscending = true,
    this.minWidth = 1000,
  });

  final bool sortAscending;
  final int? sortColumnIndex;
  final int rowsPerPage;
  final DataTableSource source;
  final List<DataColumn> columns;
  final Function(int)? onPageChanged;
  final double dataRowHeight;
  final double tableHeight;
  final double? minWidth;


@override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tableHeight,
      child: Theme(
        data: Theme.of(context).copyWith(cardTheme: const CardTheme(color: Colors.white, elevation: 0,)),
        child: PaginatedDataTable2(
          source: source,
          columns: columns,
          columnSpacing: 12,
          minWidth: minWidth,
          dividerThickness: 0,
          horizontalMargin: 12,
          rowsPerPage: rowsPerPage,
          showCheckboxColumn: true,
          showFirstLastButtons: true,
          sortAscending: sortAscending,
          onPageChanged: onPageChanged,
          dataRowHeight: dataRowHeight,
          renderEmptyRowsInTheEnd: false,
          onRowsPerPageChanged: (noOfRows){},
          sortColumnIndex: sortColumnIndex,
          headingTextStyle: Theme.of(context).textTheme.titleMedium,
          headingRowColor: MaterialStateProperty.resolveWith((states) => CColors.primaryBackground),
          empty: const AnimationLoaderWidget(text: 'Noting Found', animation: CImages.imgDataLoading, height: 200, width: 200),
          headingRowDecoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(CSizes.borderRadiusMd), topRight: Radius.circular(CSizes.borderRadiusMd))),
          sortArrowBuilder: (bool ascending, bool sorted) {
            if (sorted) {
              return Icon(ascending ? Iconsax.arrow_up_3 : Iconsax.arrow_down, size: CSizes.iconSm);
            } else {
              return const Icon(Iconsax.arrow_3, size: CSizes.iconSm);
            }
          },

          ),
      ),
    );
  }






}