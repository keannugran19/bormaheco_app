import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:gran_app/pages/login_page.dart';
import 'home_page.dart';
import 'login_or_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              // user logged in
              if (snapshot.hasData) {
                return const HomePage();
              }

              // user is Not Logged in
              else {
                return const LoginOrRegisterPage();
              }
            }));
  }
}
