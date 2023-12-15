import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gran_app/components/login_textfield.dart';
import 'package:gran_app/components/my_button.dart';
import 'package:gran_app/components/square_tile.dart';
import 'package:gran_app/components/color.dart';

import '../services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign-up
  void signUserUp() async {
    //  check if password if same
    if (passwordController.text == confirmPasswordController.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } else {
      // show error
      showErrorMessage("Passwords don't match!");
    }
    ;
  }

  // error message
  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.yellow,
            title: Center(
                child: Text(
              message,
              style: const TextStyle(color: Colors.black),
            )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              // logo
              const Image(
                image: AssetImage(
                    'lib/images/bormaheco.png'), // Replace with the path to your image asset
                width: 200,
                height: 200,
              ),

              // text
              Text(
                'Register to Bormaheco Inc.',
                style: TextStyle(
                    color: colorScheme.onBackground,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // email textfield
              MyLoginTextfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 11),

              // password textfield
              MyLoginTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 11),

              // confirm password
              MyLoginTextfield(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // sign-up
              MyButton(
                text: 'Sign Up',
                onTap: signUserUp,
              ),

              const SizedBox(height: 50),

              // divider 'continue with'
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: colorScheme.onBackground,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(color: colorScheme.onBackground),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google sign-in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google
                  SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                      imagePath: 'lib/images/googleLogo.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  SquareTile(
                      onTap: () => AuthService().signInWithFacebook(),
                      imagePath: 'lib/images/facebook.png')
                ],
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: colorScheme.onBackground),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Login now',
                      style: TextStyle(
                          color: colorScheme.tertiary,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
