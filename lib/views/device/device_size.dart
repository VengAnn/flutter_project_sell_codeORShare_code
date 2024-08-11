import 'package:flutter/material.dart';

class DeviceSize extends StatelessWidget {
  final Widget smallSize;
  final Widget mediumSize;

  const DeviceSize({
    super.key,
    required this.smallSize,
    required this.mediumSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          print("constaints size: ${constraints.maxWidth}");
          if (constraints.maxWidth <= 911) {
            return smallSize;
          } else if (constraints.maxWidth <= 1000) {
            return mediumSize;
          }
          return mediumSize; // Default to medium size
        },
      ),
    );
  }
}
