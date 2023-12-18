import 'package:firebase_auth/firebase_auth.dart';
import 'package:gran_app/constants/colors..dart';
import 'package:gran_app/constants/styles.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: darkBlue,
  );

  const TopSection({super.key});

  // signout method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0, top: 40),
      padding: const EdgeInsets.symmetric(horizontal: appPadding / 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Hello!",
              ),
              Text(
                "Welcome Back!",
                style: textStyle,
              )
            ],
          ),
          Container(
            height: 50.0,
            width: 50.0,
            child: IconButton(
                onPressed: signUserOut, icon: const Icon(Icons.logout)),
          )
        ],
      ),
    );
  }
}
