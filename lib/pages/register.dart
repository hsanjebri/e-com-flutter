import 'package:ecom/shared/custontextfield.dart';
import 'package:flutter/material.dart';

import '../shared/colors.dart';
import 'login.dart';



class Register extends StatelessWidget {
  const Register({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromARGB(255, 247, 247, 247) ,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal :33.0, vertical: 16.0),
                child: Mytextfield(
                  textInputType: TextInputType.emailAddress,
                  isPassword: false,
                  hintText: "Enter your user name",
                ),
              ),         const Padding(
                padding: EdgeInsets.symmetric(horizontal :33.0, vertical: 16.0),
                child: Mytextfield(
                  textInputType: TextInputType.emailAddress,
                  isPassword: false,
                  hintText: "Enter your user email",
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(33.0),
                child: Mytextfield(
                  textInputType: TextInputType.text,
                  isPassword: true,
                  hintText: "Enter your password",
                ),
              ),
              ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                ),
                child: Text("sign in", style: TextStyle(fontSize: 19,color: Colors.white),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ",style: TextStyle(fontSize: 18)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child:const  Text(
                      'register in',
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ),
                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}