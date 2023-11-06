import 'package:flutter/material.dart';

class property extends StatefulWidget {
  const property({super.key});

  @override
  State<property> createState() => _propertyState();
}

class _propertyState extends State<property> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('properties'),),);
  }
}