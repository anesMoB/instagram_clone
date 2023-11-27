

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/componants/postBubble.dart';
import 'package:instagram_clone/constatns/style.dart';
import 'package:instagram_clone/models/reelModel.dart';
import 'package:provider/provider.dart';

import '../provider/myprovider.dart';

class MyReel extends StatefulWidget {
  final ReelModel reelModel;
  final int reelIndex;
  const MyReel({
    super.key ,
   required this.reelModel,
   required this.reelIndex,
   });

  @override
  State<MyReel> createState() => _MyReelState();
}

class _MyReelState extends State<MyReel> {

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: widgetsColordeeper,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.only(start: 12,bottom: 16),
            alignment: const Alignment(-1,1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                   const PostBubble(),
                   const SizedBox(width: 5,),
                    Text(widget.reelModel.userName, style: const TextStyle(
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis
                        ),)
                    ],
                )
                ,Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal:2.0,vertical: 5),
                  child: RichText(
                    text:  TextSpan(
                      style: const TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            height: 2
                          ),
                      children: [
                        TextSpan(
                          text: widget.reelModel.reelTitle,
                          ),
                      ]
                    ),
                  ),
                )
                , Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 25,
                  decoration: BoxDecoration(
                    color: widgetsColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const FaIcon(FontAwesomeIcons.music,color: Colors.white,size: 14,),
                      const SizedBox(width: 8,),
                      Text(widget.reelModel.soundSource ,style: const TextStyle(color: Colors.white,fontSize: 14))
                    ],
                  ),
                )
              ],
                      ),
          )
          ,Container(
            padding: const EdgeInsetsDirectional.only(end: 12,bottom: 16),
            alignment: const Alignment(1,1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
              InkWell(
                  onTap: (){
                    myProvider.isReelInFavoriteToggle(widget.reelIndex);
                  },
                child: Column(
                  children: [
                       Icon(
                      widget.reelModel.isInFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                      color: Colors.white, size: 26,),
                  
                    Text('${widget.reelModel.reactionStats[0]}',style: const TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              const SizedBox(height:30,),
              InkWell(
                  onTap: (){
                  },
                child: Column(
                  children: [
                    const  Icon(Icons.messenger_outline,color: Colors.white,size: 32,),
                      Text('${widget.reelModel.reactionStats[1]}',style: const TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              const SizedBox(height:30,),
InkWell(
                  onTap: (){
                  },                child: Column(
                  children: [
                     const Icon(Icons.send_outlined,color: Colors.white,size: 32,),
                     Text('${widget.reelModel.reactionStats[2]}',style: const TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              const SizedBox(height:30,),
              InkWell(
                  onTap: (){
                  },child: const Icon(Icons.more_vert_outlined,color: Colors.white,size: 32,)),
              const SizedBox(height:30,),
              InkWell(
                  onTap: (){
                  },
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5)
                    ,),
                ),
              ),
              ],
                      ),
          )
       
        ],
         ),
    );
    
    
  }
}