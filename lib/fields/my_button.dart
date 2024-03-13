import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final List<Color> gradientColors;
  const MyButton({
    super.key, 
    required this.gradientColors,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      height: 55,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      
      child: const Center(
        child: Text(
          'Sign in',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}