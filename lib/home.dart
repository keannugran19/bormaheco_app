import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: const KeannuS(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    ));

class KeannuS extends StatelessWidget {
  const KeannuS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("KeannuS Gallery"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/images/beackK.jpg'),
                    radius: 40.0,
                  ),
                ),
                Divider(
                  height: 90.0,
                  color: Colors.grey,
                ),
                Text(
                  'NAME',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Keannu',
                  style: TextStyle(
                      color: Colors.amberAccent,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0),
                ),
                SizedBox(height: 20.0),
                Text(
                  'SURNAME',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Gran',
                  style: TextStyle(
                      color: Colors.amberAccent,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Icon(
                      Icons.photo_album,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'See 1113 photos',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          letterSpacing: 1.0),
                    )
                  ],
                )
              ],
            )));
  }
}
