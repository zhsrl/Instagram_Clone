import 'package:flutter/material.dart';

class Stories extends StatelessWidget {

  final String name;

  const Stories({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Column(
            children: [
              Container( 
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                ),
              ),
              SizedBox(height: 10,),
              Text(name, style: TextStyle(fontSize: 12),),
            ],
          ),
        ),
      ),
    );
  }
}