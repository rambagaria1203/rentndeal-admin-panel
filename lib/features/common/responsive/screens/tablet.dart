import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/containers/rounded_containers.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  RoundedContainer(
                    height: 450,
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    child: const Center(child: Text('Box 1'),),
                  )
                ],
              ),
            ),
            const SizedBox(width: 20,),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  RoundedContainer(
                    height: 215,
                    backgroundColor: Colors.orange.withOpacity(0.2),
                    child: const Center(child: Text('Box 2'),),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      RoundedContainer(
                        height: 215,
                        backgroundColor: Colors.red.withOpacity(0.2),
                        child: const Center(child: Text('Box 3'),),
                                            ),
                                            const SizedBox(width: 20,),
                                            RoundedContainer(
                        height: 215,
                        backgroundColor: Colors.green.withOpacity(0.2),
                        child: const Center(child: Text('Box 4'),),
                                            ),
                                            const SizedBox(width: 20,)
                    ]

                  ),
                  const SizedBox(height: 20,),
                  // Second ROw
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RoundedContainer(
                        height: 190,
                        width: double.infinity,
                        backgroundColor: Colors.red.withOpacity(0.2),
                        child: const Center(child: Text('Box 5'),),
                      ),
                      const SizedBox(height: 20,),
                      RoundedContainer(
                        height: 190,
                        width: double.infinity,
                        backgroundColor: Colors.red.withOpacity(0.2),
                        child: const Center(child: Text('Box 6'),),
                      )
                    ]
                  )
                ],
              ),
            )
          ],
        )
    ],);
  }
}