import 'package:flutter/material.dart';

import '../register_page.dart';

class MyButton extends StatelessWidget {
  final List<Color> gradientColors;
  final VoidCallback? onPressed; // Callback pour gérer le clic du bouton

  const MyButton({
    Key? key,
    required this.gradientColors,
    this.onPressed, // Le callback est facultatif
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed?.call(); // Appeler onPressed si ce n'est pas null
        DialogHelper.showAlertDialog(context); // Appeler la méthode _showDialog
      },
      child: Container(
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
        child: Center(
          child: Text(
            'Sign up',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

