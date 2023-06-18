import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NosePage extends StatefulWidget {
  NosePage({super.key});

  @override
  State<NosePage> createState() => _NosePageState();
}

class _NosePageState extends State<NosePage> {
  @override
  int _selectedindex = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('A ver que pongo aqui'),
      ),
    );
  }
}
