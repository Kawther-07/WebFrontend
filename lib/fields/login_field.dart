import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final bool obscureText;
  const LoginField({
    super.key, 
    required this.hintText,
    this.icon,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          prefixIcon: icon != null ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20), // Add space to the left of the icon
            child: Icon(icon, color: Colors.grey.shade500),
          ) : null,
        ),
      ),
    );
  }
}