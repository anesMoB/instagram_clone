
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constatns/style.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:instagram_clone/provider/myprovider.dart';
import 'package:provider/provider.dart';
class NewPublication extends StatefulWidget {
  const NewPublication({super.key});

  @override
  State<NewPublication> createState() => _NewPublicationState();
}

class _NewPublicationState extends State<NewPublication> {
  @override
  Widget build(BuildContext context) {
        final myProvider = Provider.of<MyProvider>(context);

    return Scaffold(

      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(22),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                        myProvider.layoutIndexToggle(1);

                  },
                  child: const FaIcon(FontAwesomeIcons.remove,color: Colors.white,size: 30,),
                  
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    
                  },
                  child: const Icon(Icons.settings,color: Colors.white,size: 30,),
                  
                )
              ]
              ,
            )
            ,Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/new.jpg',width: double.infinity,height: MediaQuery.of(context).size.height/3,),
            
                InkWell(
                  onTap:() {
                    
                  },
                  child: const Text("Open Settings" , style: TextStyle(color: Colors.blue,fontSize: 18),))
            ]))
            ,Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                          
                        },
                  child: Center(child:  Stack(
                         alignment: Alignment.center,
                          children: [
                           Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                       color: widgetsColor
                                        ),
                                    ),
                          Container(
                                      width: 75,
                                      height: 75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: widgetsColor as Color, width: 1),
                                        ),
                           ),
                          ],
                        ),
                  ),
                )
                ,const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(onTap: () {
                            
                          },
                        child: Stack(
                           alignment: Alignment.center,
                            children: [
                             Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                         color: widgetsColor
                                          ),
                                      ),
                            Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: widgetsColor as Color, width: 1),
                                          ),
                             ),
                            ],
                          ),
                      ),
                       Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                         
                            const ListWheelScrollViewX(
                            scrollDirection: Axis.horizontal,
                            itemExtent: 60,
                             children:  [
                                SizedBox(
                                  width: 110,
                                  height: 80,
                                  child:  Center(child: Text("POST" , style: TextStyle(color: Colors.white,fontSize: 18)))),
                                SizedBox(
                                  width: 110,
                                  height: 80,
                                  child: Center(child: Text("STORY" , style: TextStyle(color: Colors.white,fontSize: 18)))),
                                SizedBox(
                                  width: 110,
                                  height: 80,
                                  child:  Center(child: Text("REEL" , style: TextStyle(color: Colors.white,fontSize: 18)))),
                                SizedBox(
                                  width: 110,
                                  height: 80,
                                  child: Center(child: Text("LIVE" , style: TextStyle(color: Colors.white,fontSize: 18)))),
                             ]),
                              Container(
                                  width: 65,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(34, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                            ),
                          ],
                           
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(60, 255, 255, 255),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(onTap: () {
                          
                        }, child: Container(height: 100,width: 80,color: widgetsColor,)),
                      ),
                      const SizedBox(width:15,),
                      Expanded(
                        child: InkWell(onTap: () {
                          
                        },child: Container(height: 100,width: 80,color: widgetsColor,)),
                      ),
                      const SizedBox(width:15,),
                
                      Expanded(
                        child: InkWell(onTap: () {
                          
                        },child: Container(height: 100,width: 80,color: widgetsColor,)),
                      ),
                      const SizedBox(width:15,),
                      Expanded(
                        child: InkWell(onTap: () {
                          
                        },child: Container(height: 100,width: 80,color: widgetsColor,)),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],),
        ),
      )

    );
  }
}