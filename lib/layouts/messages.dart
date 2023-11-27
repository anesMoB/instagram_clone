
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:instagram_clone/provider/myprovider.dart';

import '../constatns/style.dart';
class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
  final myProvider = Provider.of<MyProvider>(context);
  var searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap:(){
            myProvider.layoutIndexToggle(1);
          },
          child: const Icon(Icons.arrow_back,size: 34,color: Colors.white,),
        ),
        
        title: InkWell(
          onTap:(){},
          child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Text(myProvider.getAccount.userName ,style: Theme.of(context).textTheme.titleMedium ),
                                const Icon(Icons.keyboard_arrow_down),
                                  
                                ],
                              ),
        ),
        actions: [
          InkWell(
            onTap: (){},
            child: const Icon(Icons.video_call_rounded,size: 34,color: Colors.white,)),
         const SizedBox(width: 16,),                 
          InkWell(
            onTap: (){},
            child: const Icon(Icons.note_alt_outlined,color: Colors.white,size: 28,),
          ) , 
         const SizedBox(width: 22,)                 
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0,0,12,0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
              children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        
                        padding:const EdgeInsets.symmetric(horizontal: 4 , vertical: 6),
                        decoration: BoxDecoration(
                          color:Colors.black,
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: TextFormField(
                          
                          cursorColor: widgetsColor,
                          controller: searchController,
                          style:  TextStyle(color: widgetsColor),
                          decoration:  InputDecoration(
                            hintText: "Search",
                            hintStyle: const TextStyle(color: Color.fromARGB(113, 255, 255, 255),height: 1.4,fontSize: 18),
                            filled: true, 
                            fillColor: widgetsColor?.withOpacity(0.1),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                            ),
                            focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color:Colors.transparent),
                              borderRadius: BorderRadius.circular(12)
                                  ),  
                            
                            iconColor: widgetsColor,
                            prefixIcon: Icon(Icons.search,color: widgetsColor)
                          ),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 4 , vertical: 12),
                        child: SizedBox(
                        width: double.infinity,
                        height: 65,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: myProvider.getMessgesBubbles.length,
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
                            child: myProvider.getMessgesBubbles[index],);
                          },),
                                      ),
                      ),
                      Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 8 , vertical: 14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                           const Text("Messages" ,style: TextStyle(color: Colors.white ,fontSize: 18),),
                           const Spacer(),
                            InkWell(onTap: () {
                              
                            }, child: const Text("Requests" ,style: TextStyle(color: Colors.blue,fontSize: 18),)),
                      
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height/1.3,
                        child: ListView.separated(
                                          shrinkWrap: false,
                                          scrollDirection: Axis.vertical,
                                          physics: const NeverScrollableScrollPhysics(),
                                          itemCount: myProvider.getFriendsAccounts.length,
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
                                            child:  SizedBox(
                                              width: double.infinity,
                                              height: 85,child: myProvider.getFriendsAccounts[index]),);
                                                                },),
                      ),
                        const SizedBox(height: 16,)
              ],
                        ),
          ),
        ),
      )

    );
  }
}



                      