import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/pages/login_page.dart';
import 'package:flutter_firebase_todo/services/form_container_widget.dart';
import 'package:flutter_firebase_todo/services/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FormContainerWidget(
                hintText: "User Name",
                isPasswordField: false,
              ),
              SizedBox(
                height: 10,
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
              Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
                    },
                    child: Text("Login",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
