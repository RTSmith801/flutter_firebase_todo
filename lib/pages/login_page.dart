import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/pages/home_page.dart';
import 'package:flutter_firebase_todo/pages/sign_up_page.dart';
import 'package:flutter_firebase_todo/services/firebase_auth_services.dart';
import 'package:flutter_firebase_todo/services/form_container_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  // prevents memory leaks
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            controller: _emailController,
            hintText: "Email",
            isPasswordField: false,
          ),
          SizedBox(
            height: 10,
          ),
          FormContainerWidget(
            controller: _passwordController,
            hintText: "Password",
            isPasswordField: true,
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: _signIn,
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

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    print("user = ");
    print(user);

    if (user != null){
      print("User is successfully signed in");
      Navigator.pushNamed(context, "/home");
    } else {
      print("Error occurred in login_page.dart (approx. line 114)");
    }
  }
}
