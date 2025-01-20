import 'package:flutter/material.dart';
import 'package:social_media_app/components/button.dart';
import 'package:social_media_app/components/textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Icon(
                Icons.person,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 20),

              // App name
              Text("S O C I A L  A P P", style: TextStyle(fontSize: 20)),

              const SizedBox(height: 50),

              // Email textfield
              CustomTextfield(
                  hintText: "username",
                  obscureText: false,
                  controller: usernameController),

              const SizedBox(height: 10),

              // Email textfield
              CustomTextfield(
                  hintText: "email",
                  obscureText: false,
                  controller: emailController),

              const SizedBox(height: 10),

              // Password textfield
              CustomTextfield(
                  hintText: "password",
                  obscureText: true,
                  controller: passwordController),

              const SizedBox(height: 10),

              // Email textfield
              CustomTextfield(
                  hintText: "confirm password",
                  obscureText: true,
                  controller: confirmPasswordController),

              const SizedBox(height: 10),

              // Forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      )),
                ],
              ),

              const SizedBox(height: 20),

              // register button
              CustomButton(
                onTap: register,
                text: "Register",
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Login Here",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
