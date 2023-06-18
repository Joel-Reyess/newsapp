import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddNews extends StatefulWidget {
  AddNews({super.key});

  @override
  State<AddNews> createState() => _AddNewsState();
}

class _AddNewsState extends State<AddNews> {
  @override
  int _selectedindex = 2;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add your News"),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Text('Add news'),
      ),
    );
  }
}
