import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/postModel.dart';
import 'package:instagram_clone/models/reelModel.dart';
import 'package:provider/provider.dart';

import '../constatns/style.dart';
import '../models/accountModel.dart';

class MyProvider with ChangeNotifier{

  final _controller = PageController(initialPage: 1);
  get getLayoutController => _controller;


  void layoutIndexToggle(int index){
    _controller.jumpToPage(index);
    notifyListeners();
  }

  /* BOTTOM DRAWER SECTION */
  bool isBottomDrawerOpened=false;
  double bottomDrawerHeight=0;
  bool get getIsBottomDrawerOpened =>  isBottomDrawerOpened;
  double get getBottomDrawerHeight =>  bottomDrawerHeight;

  void toggleIsBottomDrawerOpened(BuildContext context,bool isToOpen){
    isBottomDrawerOpened=isToOpen;
    if(isToOpen){
      bottomDrawerHeight=MediaQuery.of(context).size.height * 0.6;
    }
    else{
    bottomDrawerHeight=0;
    }
    notifyListeners();
  }


  /* POSTS SECTION */

  List<PostModel> posts=[
    PostModel(postId: 1, userName: "userName", accountImageUrl: "accountImageUrl", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", isNotJustImage: true, isAccountVerified: true,likesCounter: 12),
    PostModel(postId: 2, userName: "userName", accountImageUrl: "accountImageUrl", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", isNotJustImage: false, isAccountVerified: false,likesCounter: 202,isInFavorite:true),
    PostModel(postId: 3, userName: "userName", accountImageUrl: "accountImageUrl", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", isNotJustImage: true, isAccountVerified: false),
    PostModel(postId: 4, userName: "userName", accountImageUrl: "accountImageUrl", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", isNotJustImage: false, isAccountVerified: true,likesCounter: 1150,isInFavorite:true),
  ];
    List<PostModel> get getPosts =>  posts;

  void isInFavoriteToggle(index){
     if(posts[index].isInFavorite){
      posts[index].isInFavorite=false;
      posts[index].likesCounter -=1;
      
    }else{
       posts[index].isInFavorite=true;
      posts[index].likesCounter +=1;
    }
        notifyListeners();

  }
  void isInBookMarkedToggle(index){
    posts[index].isInBookMarked=!posts[index].isInBookMarked;
        notifyListeners();

  }


  /* REELs SECTION */

  List<ReelModel> reels=[
    ReelModel(reactionStats: [7,3,4],
             reelTitle: 'Flutter : how to work with Widgets ', 
             soundSource: 'sound source', 
             userName: 'userName 6',),
    ReelModel(reactionStats: [2,1,6],
             reelTitle: 'JavaScript : how to work with Events ', 
             soundSource: 'sound source', 
             userName: 'userName 0',
             isInFavorite: true),
    ReelModel(reactionStats: [18,16,12],
             reelTitle: 'HTML : how to work with sematic tags ', 
             soundSource: 'sound source', 
             userName: 'userName 2 ',
             isInFavorite: true),
    ReelModel(reactionStats: [8,6,2],
             reelTitle: 'Css : how to work with flexBox ', 
             soundSource: 'sound source', 
             userName: 'userName ',),
  ];
    List<ReelModel> get getReels =>  reels;

  void isReelInFavoriteToggle(index){
    if(reels[index].isInFavorite){
      reels[index].isInFavorite=false;
      reels[index].reactionStats[0] -=1;
      
    }else{
       reels[index].isInFavorite=true;
      reels[index].reactionStats[0] +=1;
    }
        notifyListeners();
  }


  /* ACCOUNT  */
  AccountModel accountModel= AccountModel(userName: 'userName',followersCount: 38,followingCount: 80,postsCount: 15);
  AccountModel get getAccount =>  accountModel;


  List<Widget> accountStories=[
      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Container(
                            width:80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: widgetsColor as Color,width:1),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: const Center(child: Icon(Icons.add,color: Colors.white,),),),
                           const Text('New',style: TextStyle(color: Colors.white,height: 2),)
                         ],
                       ),
  Column(
    children: [
      Container(
                            width:85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
  Column(
    children: [
      Container(
                            width:85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
  Column(
    children: [
      Container(
                            width:85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
  Column(
    children: [
      Container(
                            width:85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
  Column(
    children: [
      Container(
                            width:85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
  Column(
    children: [
      Container(
                            width:85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
                     
  ];
  List<Widget> get getAccountStories =>  accountStories;


  /* account tabs */

  int currentTab=0;
  int get getCurrentTab =>  currentTab;

  void currentTabToggle(int index){
    currentTab=index;
    notifyListeners();
  }


  /* messages */



  List<Widget> messgesBubbles=[
     
  Stack(
    children: [
      Container(
                            width:65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
  Stack(
    children: [
      Container(
                            width:65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: widgetsColordeeper,
                              borderRadius: BorderRadius.circular(50)
                            ),),
    ],
  ),
  Stack(
    alignment: const Alignment(0.8,0.8),
    children: [
      Container(
        width:65,
        height: 65,
        decoration: BoxDecoration(
        color: widgetsColordeeper,
        borderRadius: BorderRadius.circular(50)
        ),),
       Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            width: 14,
            height: 14,
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 19, 216, 25),
           borderRadius: BorderRadius.circular(80)
            ),)
    ],
  ),
                 
  ];
  List<Widget> get getMessgesBubbles =>  messgesBubbles;


  List<Widget> friendsAccounts=[
    ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 19, 216, 26),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName 0",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve 38m ago",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 19, 216, 25),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName 3",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve now",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 19, 216, 25),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName 4",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve now",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: const Color.fromARGB(0, 19, 216, 25),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName 5",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve 10s ago",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 19, 216, 26),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve 1h ago",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 19, 216, 25),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName 9",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve now",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: const Color.fromARGB(0, 19, 216, 25),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName 7",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve 1h 15m ago",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
ListTile(
                            leading: Stack(
                                alignment: const Alignment(0.8,0.8),
                                children: [
                                  Container(
                                    width:55,
                                    height: 65,
                                    decoration: BoxDecoration(
                                    color: widgetsColordeeper,
                                    borderRadius: BorderRadius.circular(50)
                                    ),),
                                  Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 19, 216, 25),
                                      borderRadius: BorderRadius.circular(80)
                                        ),)
                                ],
                              ),
                            title: const Text("userName 10",style: TextStyle(color: Colors.white,fontSize: 18),),
                            subtitle: const Text("Actve now",style: TextStyle(color: Color.fromARGB(97, 255, 255, 255),fontSize: 16),),
                            trailing: InkWell(onTap: (){},child: const Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,),),
                          ),
 
 
    
                 
  ];
  List<Widget> get getFriendsAccounts =>  friendsAccounts;
}
