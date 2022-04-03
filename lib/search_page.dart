import 'package:flutter/material.dart';
import 'package:instagram_clone/util/recommended_grid.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          height: 40,
          child: TextField(
            style: TextStyle(
              fontSize: 15.0,
            ),
                
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                  fillColor: Color.fromRGBO(239, 239, 239, 1),
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  isDense: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
        ),
            
          ),
          
          body: RecommendedGrid()
            
          
      );
      
  }
}