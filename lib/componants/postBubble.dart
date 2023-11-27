
import 'package:flutter/material.dart';
import 'package:instagram_clone/constatns/style.dart';

class PostBubble extends StatelessWidget {
  final postBubbleSize;
  const PostBubble({super.key,this.postBubbleSize=0});

  @override
  Widget build(BuildContext context) {
      double bubbleSize= postBubbleSize==0 ? 45 : 30;

    return Column(
                  children: [
                     Stack(
                       alignment: Alignment.center,
                        children: [
                         Container(
                                    height: bubbleSize,
                                    width: bubbleSize,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      gradient: const LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.yellow,
                                          Colors.purple,
                                        ],
                                      )  
                                      ),
                                  ),
                        Container(
                                    width: bubbleSize-5,
                                    height: bubbleSize-5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: widgetsColor    
                                      ),
                         ),
                        ],
                      ),
                  ],         
                );
  }
}