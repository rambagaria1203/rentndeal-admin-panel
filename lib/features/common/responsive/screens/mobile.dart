import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/containers/rounded_containers.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // FIRST ROW
        RoundedContainer(
          height: 450,
          width: double.infinity,
          backgroundColor: Colors.blue.withOpacity(0.2),
          child: const Center(child: Text('Box 1'),),
        ),
        const SizedBox(height: 20,),
        RoundedContainer(
          height: 215,
          width: double.infinity,
          backgroundColor: Colors.orange.withOpacity(0.2),
          child: const Center(child: Text('Box 2'),),
        ),
        const SizedBox(height: 20,),
        RoundedContainer(
          height: 215,
          width: double.infinity,
          backgroundColor: Colors.red.withOpacity(0.2),
          child: const Center(child: Text('Box 3'),),
        ),
        const SizedBox(height: 20,),
        RoundedContainer(
          height: 215,
          width: double.infinity,
          backgroundColor: Colors.green.withOpacity(0.2),
          child: const Center(child: Text('Box 4'),),
        ),
        const SizedBox(height: 20,),
        RoundedContainer(
          height: 215,
          width: double.infinity,
          backgroundColor: Colors.orange.withOpacity(0.2),
          child: const Center(child: Text('Box 5'),),
        ),
        const SizedBox(height: 20,),
        RoundedContainer(
          height: 215,
          width: double.infinity,
          backgroundColor: Colors.orange.withOpacity(0.2),
          child: const Center(child: Text('Box 6'),),
        ),
        const SizedBox(height: 20,),
      ]
    );
  }
}