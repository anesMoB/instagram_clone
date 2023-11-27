
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/componants/postBubble.dart';
import 'package:instagram_clone/models/postModel.dart';
import 'package:instagram_clone/provider/myprovider.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math; 

import '../constatns/style.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({super.key});

  @override
  State<MyPosts> createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> with TickerProviderStateMixin{
   late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<MyProvider>(context);

    return   ListView.builder(
                  shrinkWrap: true,
                  itemCount: myProvider.getPosts.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Padding(
                      padding:const EdgeInsetsDirectional.only(top: 15),
                      child: MyPost(context,myProvider.getPosts[index],myProvider,index)) ;
                  }
              );
      }
}

// ignore: non_constant_identifier_names
Widget MyPost(BuildContext context,PostModel post,MyProvider myProvider,int index){

  return SizedBox(
    height: MediaQuery.of(context).size.height <600 ? MediaQuery.of(context).size.height*1.2  : MediaQuery.of(context).size.height * 0.85,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height <600 ? MediaQuery.of(context).size.height * 0.70 : MediaQuery.of(context).size.height * 0.55,
          width: double.infinity,
          child: Stack(
              children: [
                Container(
              width: double.infinity,
              height: double.infinity,
              color: widgetsColordeeper,
            ),
            Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                /* account image */
                const PostBubble(),
                const SizedBox(width: 10,),
                Padding(
                  padding:   post.isNotJustImage ? const EdgeInsetsDirectional.only(top:4.0) : const EdgeInsetsDirectional.only(top:14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(post.userName,style:const TextStyle(color: Colors.white ,fontSize: 14),),
                          const SizedBox(width: 5,),
                          if(post.isAccountVerified) const Padding(
                            padding: EdgeInsets.only(top: 3),
                            child:   Icon(Icons.verified,color: Colors.blue,size: 18,))
                         
                        ],
                      ),
                      post.isNotJustImage ? Text(post.postSoundName,style:const TextStyle(color: Colors.white,fontSize: 12),) : const SizedBox()
                    ],
                  ),
                ),    
                const Spacer(),
                InkWell(
                  onTap: (){
                    myProvider.toggleIsBottomDrawerOpened(context,!myProvider.getIsBottomDrawerOpened);
                  },
                  child: const Icon(Icons.more_vert,color: Colors.white,),
                ),
              ],
            ),
          ),
            /* Post Container */
            
           ],
            ),
        ),
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          width: double.infinity,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                InkWell(
                  onTap: (){
                    myProvider.isInFavoriteToggle(index);
                  },
                   child:   Icon(
                    post.isInFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                    color: Colors.white, size: 26,),
                ),
                InkWell(
                  onTap: (){
                    
                  },
                
                  child:Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Container(
                    margin: const EdgeInsetsDirectional.symmetric(horizontal: 22),
                      child: const FaIcon(FontAwesomeIcons.comment ,color: Colors.white, size: 24,),
                    )),
                ),
                InkWell(
                  onTap: (){
        
                  },
                          child: const FaIcon(FontAwesomeIcons.shareNodes ,color: Colors.white,
                           size: 24,)),
               
                ],
              ),
              InkWell(
                  onTap: (){
                    myProvider.isInBookMarkedToggle(index);
                  },
                
                  child: Icon(
                    post.isInBookMarked ?Icons.bookmark : 
                    Icons.bookmark_border,
                    
                    color: Colors.white,
                  size: 26,),
                ),
            ],
          ),
        )
        ,Padding(
          padding: const EdgeInsetsDirectional.only(start:14.0),
          child: Text("${post.likesCounter} likes",style: const TextStyle(color: Colors.white,fontSize: 13),),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start:14.0),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
           text: TextSpan(
            children: [
              TextSpan(
              text:"${post.userName} ",
                  style: const
                  TextStyle(color: Colors.white,fontSize: 13,
                  fontWeight: FontWeight.bold)),
              TextSpan(
               text: post.description,
                 
                  style: const
                  TextStyle(
                    color: Colors.white,fontSize: 13,
                    
                    
                    )
              )
            ]
          )
          )
        ),
     
        Padding(
          padding: const EdgeInsetsDirectional.only(start:14.0,top:12),
          child:Text("view all 65 comments",style: TextStyle(color: Colors.grey[600],fontSize: 13),)
          ),
        
        Padding(
          padding: const EdgeInsetsDirectional.only(start:14.0,top:12),
          child:Row(
            children: [
             const PostBubble(postBubbleSize: 1,),
              const SizedBox(width: 10,),
              Text("Add a comment ...",style: TextStyle(color: Colors.grey[600],fontSize: 14),)
            ],
          ) 
        ),
     
        Padding(
          padding: const EdgeInsetsDirectional.only(start:14.0,top:12),
          child:Row(
            children: [
             Text("5 Hour a ago  .",style: TextStyle(color: Colors.grey[600],fontSize: 11),),
              const SizedBox(width: 10,),
              Text("see translation",style: TextStyle(color: Colors.grey[200],fontSize: 11),)
            ],
          ) 
        ),
     
      ],
    )
  ) ;
}
                  