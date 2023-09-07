import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;

  const ChartBar(
      {required this.label, required this.percentage, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 20,
            child: FittedBox(child: Text('R\$${value.toStringAsFixed(2)}'))),
        const SizedBox(height: 5),
        SizedBox(
          height: 60,
          width: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200, width: 1),
                    color: Colors.grey.shade100),
              ),
              FractionallySizedBox(
                heightFactor: percentage,
                child: Container(
                    decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                )),
              )
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(label)
      ],
    );
  }
}
