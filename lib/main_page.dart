import 'package:flutter/material.dart';
import 'package:instagram_clone/util/posts.dart';
import 'package:instagram_clone/util/stories.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<String> people = ['zhasarall', 'aikumis', 'aqyqat', 'melomenemes', 'avaya_gift', 'yeskendir', 'zukerberg'];
  final List<String> postText = ['Have a nice day!', 
  'For norland produce age wishing', 
  ' To figure on it spring season up', 
  'Certainty determine at of arranging perceived situation or',
  'r wholly pretty county in oppose',
  'Give lady of they such they sure it',
  'Me contained explained my education'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Text('Instagram', style: TextStyle(color: Colors.black)),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.chat)
              ],
            )
          ],

        
        )
      ),
      body: Column(
        children: [

          // Stories
          Container(
            height: 130,
            child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: people.length, itemBuilder: (BuildContext context,int index) {
              return Stories(name: people[index]);
            },
          )),

          // Posts
          Expanded(
            child: ListView.builder(itemCount: people.length, itemBuilder: (BuildContext context, int index) {
                return Posts(name: people[index], postText: postText[index],);
              },
            ),
          )
          

        ]
      )
      ,
    );
  }
}