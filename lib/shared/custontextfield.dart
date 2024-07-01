

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  const Mytextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.text,
      obscureText: true,

      decoration: InputDecoration(
        hintText: "Enter Your Password: ",
// To delete borders
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
