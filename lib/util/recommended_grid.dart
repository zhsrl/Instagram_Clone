import 'package:flutter/material.dart';

class RecommendedGrid extends StatelessWidget {

  const RecommendedGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 200,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(color: Colors.red[200])
        );
      });

      
  }

}