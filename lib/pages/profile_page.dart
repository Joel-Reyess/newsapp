import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newsapp/pages/addnews_page.dart';
import './news_page.dart';
import 'nose_page.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  int _selectedIndex = 3;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
          child: Container(
        child: Column(children: [
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                  image: AssetImage('assets/images/userdefault.png')),
            ),
          ),
          const SizedBox(height: 10),
          Text("User: " + user.email!, style: TextStyle(fontSize: 20)),
          const SizedBox(height: 30),
          const Divider(),
          const SizedBox(height: 20),
        ]),
      )),
    );
  }
}
