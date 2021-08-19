
import 'package:blog_app/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            children: <Widget>[
              const Text(
                'Want to impact people with thoughts in the form of a blog anonymously?',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
              ),
              const Text(
                'This is just the App ! You can post your blogs here anonymously.',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      elevation: 5.0,
                      margin: const EdgeInsets.only(top: 45.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0, bottom: 15),
                        child: Column(
                          children: <Widget>[
                            const Text('Taanish Bhardwaj',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                )),
                            const SizedBox(
                              height: 10.0,
                            ),

                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'The Developer behind this project',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: .0,
                    left: .0,
                    right: .0,
                    child: Center(
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: CachedNetworkImageProvider(
                            'https://firebasestorage.googleapis.com/v0/b/bloga-66980.appspot.com/o/WhatsApp%20Image%202021-07-21%20at%2023.54.48.jpeg?alt=media&token=6acd17b8-50a8-45a2-a56b-92160cfee5ad'),
                      ),
                    ),
                  )
                ],
              ),


              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}