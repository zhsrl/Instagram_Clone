import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget {
  ReelsPage({Key? key}) : super(key: key);

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Reels'),
      ),
    );
  }
}