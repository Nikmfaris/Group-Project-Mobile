import 'package:flutter/material.dart';
import 'package:ip_eps/components/my_button.dart';
import 'package:ip_eps/components/my_textfield.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatelessWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  void register() {
    print("registering...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lottie animation
              Lottie.asset(
                'assets/login.json',
                width: 200, // Set the desired width
                height: 200, // Set the desired height
              ),

              //app name
              const Text("I P  E P S",
                  style: TextStyle(fontSize: 30, color: Colors.green)),
              const SizedBox(height: 20),
              //username textfield
              MyTextfield(
                  hintText: "username",
                  obscureText: false,
                  controller: usernamecontroller),
              const SizedBox(height: 10),

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

              //confirm password textfield
              //username textfield
              MyTextfield(
                  hintText: "confirm password",
                  obscureText: true,
                  controller: confirmPassController),
              const SizedBox(height: 10),

              //forgot password
              Row(
                children: [
                  Text("forgot password?",
                      style: TextStyle(color: Colors.green, fontSize: 15)),
                ],
              ),
              const SizedBox(height: 25),

              //register button
              MyButton(text: "register", onTap: register),

              //dont have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(color: Colors.green, fontSize: 15)),
                  GestureDetector(
                    onTap: onTap,
                    child: Text("  login here",
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
