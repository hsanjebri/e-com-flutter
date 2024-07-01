import 'package:ecom/shared/custontextfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 64),
            Padding(
              padding: EdgeInsets.all(33.0),
              child: Mytextfield(),
            ),
          ],
        ),
      ),
    );
  }
}