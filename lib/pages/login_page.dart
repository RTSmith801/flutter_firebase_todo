import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/pages/home_page.dart';
import 'package:flutter_firebase_todo/pages/sign_up_page.dart';
import 'package:flutter_firebase_todo/services/form_container_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
            "Login",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FormContainerWidget(
            hintText: "Email",
            isPasswordField: false,
          ),
          SizedBox(
            height: 10,
          ),
          FormContainerWidget(
            hintText: "Password",
            isPasswordField: true,
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
            ),
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignUpPage()), (route) => false);
                },
                child: Text("Sign Up",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
