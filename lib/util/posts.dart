import 'package:flutter/material.dart';


class Posts extends StatelessWidget {

  final String name;

  const Posts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // profile photo

                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                  ),

                  SizedBox(width: 10),
                  
                  // username
                  Text(name),

                ],
                
              ),

              Icon(Icons.more_horiz_rounded)
            ],
          ),

          
        ),
        SizedBox(height: 5),
        Container(
          height: 300,
          color: Colors.grey,
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.comment_outlined),
                  ),
                  Icon(Icons.share_rounded),
                ],
              ),

              Icon(Icons.bookmark_outline)
            ],
          ),
        )
      ],
    );
  }
}