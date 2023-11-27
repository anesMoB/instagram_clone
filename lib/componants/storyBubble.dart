

import 'package:flutter/material.dart';
import 'package:instagram_clone/constatns/style.dart';

class StoryBubble extends StatelessWidget {
  final String username;
  final int index;
  const StoryBubble({super.key,required this.username,required this.index});

  @override
  Widget build(BuildContext context) {
    double storyBubbleSize=75;
    return Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: storyBubbleSize,
                                width: storyBubbleSize,
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
                                width: storyBubbleSize-5,
                                height: storyBubbleSize-5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: widgetsColor    
                                  ),
                                child: index!=0 ? const SizedBox() :
                                 Align(
                                  alignment:const Alignment(1,1),
                                   child: GestureDetector(
                                    onTap: (){
                                 
                                    },
                                   child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration:const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.blue
                                    ),
                                    child:const  Center(child: Icon(Icons.add,size: 15,),),
                                   ),),
                                 ),  
                              ),
                            
                           ],
                          ),
                         const  SizedBox(height: 5,),
                          Text( 
                            username,
                           style: TextStyle(color: Colors.grey[400]),)
                        ],
                      );
                    ;
  }
}