import 'package:flutter/material.dart';
import 'package:ip_eps/components/my_button.dart';
import 'package:ip_eps/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(Icons.insert_emoticon_sharp, size: 100, color: Colors.green),
              const SizedBox(height: 20),
              //app name
              const Text("I P  E P S",
                  style: TextStyle(fontSize: 30, color: Colors.green)),
              const SizedBox(height: 20),
              //email textfield
              MyTextfield(
                  hintText: "email",
                  obscureText: false,
                  controller: emailcontroller),
              const SizedBox(height: 10),
              //password textfield
              MyTextfield(
                  hintText: "password",
                  obscureText: true,
                  controller: passwordcontroller),
              const SizedBox(height: 10),
              //forgot password
              Row(
                children: [
                  Text("forgot password?",
                      style: TextStyle(color: Colors.green, fontSize: 15)),
                ],
              ),
              const SizedBox(height: 25),
              //sign in button
              MyButton(text: "login", onTap: () {}),

              //dont have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(color: Colors.green, fontSize: 15)),
                  GestureDetector(
                    onTap: () {},
                    child: Text("  Register here",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
