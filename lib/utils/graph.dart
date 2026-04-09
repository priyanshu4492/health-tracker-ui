import 'package:flutter/material.dart';

class GraphPage extends StatelessWidget {
  final double height;
  final double width;
  final String Month;
  
  const GraphPage({
    super.key,
    required this.height,
    required this.width,
    required this.Month,
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white.withOpacity(0.08),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
          ),
          
        ),
        Text(Month, style: TextStyle(color: Colors.white)),
      ],
    );
    
  }
}
