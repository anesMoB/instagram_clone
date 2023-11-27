
import 'package:flutter/material.dart';
import 'package:instagram_clone/componants/storyBubble.dart';

import '../constatns/style.dart';

class MyStories extends StatefulWidget {
  const MyStories({super.key});

  @override
  State<MyStories> createState() => _MyStoriesState();
}

class _MyStoriesState extends State<MyStories> {
    int friendsNumber=10;

  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: const EdgeInsetsDirectional.only(start: 18),
                width: double.infinity,
                height: 110,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: friendsNumber,
                  itemBuilder: (context,index){
                    return Padding(
                      padding:const EdgeInsetsDirectional.only(end: 15),
                      child: StoryBubble(username: index ==0 ? "Your story" :"userName: $index", index: index)) ;
                  }
                          ),
              )
              ;
  }
}