import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controller;
  final String? title;
  final String? placeholder;
  final TextInputType? keyboardType;
  final IconData? icon;

  Editor({
    this.title,
    this.controller,
    this.placeholder,
    this.keyboardType,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: title,
          hintText: placeholder,
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
