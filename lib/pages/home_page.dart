import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newsapp/pages/addnews_page.dart';
import 'package:newsapp/pages/profile_page.dart';
import './news_page.dart';
import 'nose_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  int _selectedIndex = 3;
  List<dynamic> Pages = [NewsPage(), NosePage(), AddNews(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 8,
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.library_books,
                  text: 'News',
                ),
                GButton(
                  icon: Icons.add,
                  text: 'Publish',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Profile',
                )
              ]),
        ),
      ),
    );
  }
}
