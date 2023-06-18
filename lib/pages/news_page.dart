import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewsPage extends StatefulWidget {
  NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  
  @override
  int _selectedindex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home News"),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Text('Home SNews'),
      ),
    );
  }
}
