import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gran_app/components/login_textfield.dart';
import 'package:gran_app/components/my_button.dart';
import 'package:gran_app/components/square_tile.dart';
import 'package:gran_app/components/color.dart';

import '../services/auth_service.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign-in
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign-in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //remove the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //remove the loading circle
      Navigator.pop(context);

      // show error if wrong password or email
      showErrorMessage(e.code);
    }
  }

// wrong email message
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        );
      },
    );
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
                'Login to Bormaheco Inc.',
                style: TextStyle(
                    color: colorScheme.onBackground,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

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

              const SizedBox(height: 10),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: colorScheme.onBackground),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // sign-up
              MyButton(
                text: 'Sign In',
                onTap: signUserIn,
              ),

              const SizedBox(height: 30),

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

              const SizedBox(height: 30),

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

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: colorScheme.onBackground),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register now',
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
