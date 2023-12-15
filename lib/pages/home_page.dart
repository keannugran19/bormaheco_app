import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'details_page.dart';

// signout
void signUserOut() {
  FirebaseAuth.instance.signOut();
}

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'lib/images/1.jpg',
  ),
  ImageDetails(
    imagePath: 'lib/images/2.jpg',
  ),
  ImageDetails(
    imagePath: 'lib/images/3.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/4.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/5.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/6.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/7.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/8.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/9.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/10.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/11.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/12.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/13.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/14.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/15.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/16.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/17.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/18.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/19.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/20.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/21.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/22.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/23.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/24.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/25.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/26.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/27.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/28.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/29.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/30.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/31.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/32.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/33.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/34.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/35.jpeg',
  ),
  ImageDetails(
    imagePath: 'lib/images/36.jpg',
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // signout method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          scrolledUnderElevation: 0.0,
          actions: [
            IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))
          ]),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Gallery',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  ImageDetails({
    required this.imagePath,
  });
}
