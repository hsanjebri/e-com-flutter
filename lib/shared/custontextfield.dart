

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextInputType textInputType;
  final bool isPassword;
  final String hintText;

  const Mytextfield({
    Key? key,
    required this.textInputType,
    required this.isPassword,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
    );
  }
}
