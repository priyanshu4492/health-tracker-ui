import 'dart:ui';

import 'package:flutter/material.dart';
class AdvisiorPage extends StatefulWidget {
  const AdvisiorPage({super.key});

  @override
  State<AdvisiorPage> createState() => _AdvisiorPageState();
}

class _AdvisiorPageState extends State<AdvisiorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEADCD5),
                  Color(0xFFD6B1B1),
                  Color(0xFF6D4A7E),
                  Color(0xFF2E1A3C),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // 🌈 Radial Glow (Top Left)
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.8,
                  colors: [Colors.pink.withOpacity(0.4), Colors.transparent],
                ),
              ),
            ),
          ),

          // 🌈 Radial Glow (Bottom Right)
          Positioned(
            bottom: -120,
            right: -100,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.9,
                  colors: [
                    Colors.deepPurple.withOpacity(0.4),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // ✨ Extra Soft Glow (Center)
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.7,
                  colors: [Colors.orange.withOpacity(0.2), Colors.transparent],
                ),
              ),
            ),
          ),

          // 🌫️ Blur Layer (IMPORTANT)
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Container(color: Colors.transparent),
          ),


          

        ],
      ),
    );
  }
}