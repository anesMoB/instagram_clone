import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/componants/my_navbar.dart';
import 'package:provider/provider.dart';
import 'package:instagram_clone/provider/myprovider.dart';
import '../constatns/style.dart';
import 'dart:math' as math; 

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
        final myProvider = Provider.of<MyProvider>(context);
      double bubbleSize=  70 ;

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal:0.0,vertical: 8),
      child: Column(
        children: [
          Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal:16),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                 padding: const EdgeInsetsDirectional.symmetric(horizontal:12,vertical: 6),
                  child: 
                  MyNavBar(
                    titleWidegt: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            Text(myProvider.getAccount.userName ,style: Theme.of(context).textTheme.titleMedium ),
                            const Icon(Icons.keyboard_arrow_down),
                              
                            ],
                          ), firstWidget:  const Icon(Icons.add_box_outlined,size: 30,color: Colors.white,),
                          secondWidget: Stack(
                                alignment: const Alignment(0.6,-0.2),
                                children: [
                                  const Icon(Icons.menu,size: 30,color: Colors.white,),
                                 Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(80)
                                  ),)
                                ],
                              ) , ),
                ),
                 Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical:8),
                   child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                               Expanded(
                                 child: Stack(
                             alignment: Alignment.center,
                              children: [
                               Container(
                                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 14),
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
                               ),
                               Expanded(
                                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(myProvider.getAccount.postsCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                      ),),
                      const  Text("Posts",
                         style:  TextStyle(
                        color: Colors.white,
                        fontSize: 14
                      ),),
                    ],
                                 ),
                               ),      
                               Expanded(
                                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(myProvider.getAccount.followersCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                      ),),
                      const  Text("Followers",
                         style:  TextStyle(
                        color: Colors.white,
                        fontSize: 14
                      ),),
                    ],
                                 ),
                               ),      
                               Expanded(
                                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(myProvider.getAccount.followingCount.toString(), 
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                      ),),
                      const Text("Following", style:  TextStyle(
                        color: Colors.white,
                        fontSize: 14
                      ),),
                    ],
                                 ),
                               ),      
                    
                             ],),
                 ),
             const Padding(
                padding:  EdgeInsetsDirectional.fromSTEB(10, 12, 22, 0),
                child:  Text("user" ,style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              const Padding(
                padding:  EdgeInsetsDirectional.fromSTEB(10,12,22,0 ),
                child:  Text("user bio ",style: TextStyle(color: Colors.white,fontSize: 18),),
              )
            ,Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child:InkWell(
                    onTap: (){},
                    child: Container(
                       height: 40,
                      margin: const EdgeInsetsDirectional.fromSTEB(6, 12, 2, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        color: widgetsBlackColor
                      ),
                      child: const Center(child: Text("Edit profile",style:  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 14
                    ),)),
                    ),
                  )
                 ),
                Expanded(
                  child:InkWell(
                    onTap: (){},
                    child: Container(
                      height: 40,
                      margin: const EdgeInsetsDirectional.fromSTEB(12, 12, 2, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: widgetsBlackColor
                      ),
                      child: const Center(child: Text("Share profile",style:  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 14
                    ),),),
                    ),
                  )
                 ),
              InkWell(
                onTap: (){},
                child: Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsetsDirectional.fromSTEB(6, 12, 0, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    color: widgetsBlackColor
                  ),
                  child: Center(child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: const Icon(Icons.person_add_alt_outlined)),
                ),
                ),
              ),
              
              ],
            ),
               const Padding(
                padding:  EdgeInsetsDirectional.fromSTEB(10, 12, 22, 0),
                child:  Text("Story highlights" ,style: TextStyle(color: Colors.white,fontSize: 14),),
              ),
              const Padding(
                padding:  EdgeInsetsDirectional.fromSTEB(10,12,22,0 ),
                child:  Text("Keep your favorite stories on your profile ",style: TextStyle(color: Colors.white,fontSize: 12),),
              ),
              Padding(
                 padding: const EdgeInsetsDirectional.symmetric(horizontal:12,vertical: 12),
                child: SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: myProvider.getAccountStories.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 15,);
                    },
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                         /*  if (kDebugMode) {
                            print("pressed");
                          } */
                        },
                      child: myProvider.getAccountStories[index],);
                    },),
                ),
              )
              ]
            ),
            
             ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin:const  EdgeInsets.only(bottom: 12),
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          MaterialButton(onPressed: (){
                            myProvider.currentTabToggle(0);
                          },child: const Icon(Icons.grid_on_rounded,color: Colors.white,size: 26,),),
                          const Spacer(),
                          if(myProvider.getCurrentTab==0)
                             Container(height: 1,color: Colors.white,)                      ],
                      )),
                      Expanded(child: Column(
                        children: [
                          MaterialButton(onPressed: (){
                               myProvider.currentTabToggle(1);
                          },child:const FaIcon(FontAwesomeIcons.clapperboard,color: Colors.white,),),
                          const Spacer(),
                          if(myProvider.getCurrentTab==1)
                             Container(height: 1,color: Colors.white,)
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          MaterialButton(onPressed: (){
                              myProvider.currentTabToggle(2);
          
                          },child: const Icon(Icons.person_pin_outlined,color: Colors.white,size: 26),),
                           const Spacer(),
                           if(myProvider.getCurrentTab==2)
                             Container(height: 1,color: Colors.white,)
                           
                           
                        ],
                      )),
                    ],
                  ),
                )
                ,if(myProvider.getCurrentTab==0)
                  Expanded(child: SizedBox(width: double.infinity,height: double.infinity, 
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: myProvider.getAccount.postsCount,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: (){
                          },
                          child: Container(width: MediaQuery.of(context).size.width/4,height: 250,color: widgetsColordeeper,)),
                      );
                    }),))
                   ,if(myProvider.getCurrentTab==1)
                  Expanded(child: SizedBox(width: double.infinity,height: double.infinity, 
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: myProvider.getAccount.postsCount - 8,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: (){
                            
                          },
                          child: Container(width: MediaQuery.of(context).size.width/4,height: MediaQuery.of(context).size.width/4,color: widgetsColordeeper,)),
                      );
                    }),))
                   
                    ,if(myProvider.getCurrentTab==2)
                  const Expanded(child:  SizedBox(width: double.infinity,height: double.infinity, 
                  child:  Center(child: Icon(Icons.person_add_disabled_outlined,color: Color.fromARGB(120, 255, 255, 255),size: 58,),)))
              
              ],
            ),
          )
        ],
      ),
    );
  }
}