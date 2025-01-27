import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/common/containers/rounded_containers.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RoundedContainer(
            height: 450,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(child: Text('Box 1'),),
          ),
        ),
    
        const SizedBox(width: 20,),
        Expanded(
          child: RoundedContainer(
            height: 450,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(child: Text('Box 2'),),
          ),
        ),
    
        const SizedBox(width: 20,),
        Expanded(
          child: RoundedContainer(
            height: 450,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(child: Text('Box 1'),),
          ),
        )
      ],
    );
  }
}