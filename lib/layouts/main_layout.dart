
import 'package:bottom_sheet_bar/bottom_sheet_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constatns/style.dart';
import 'package:instagram_clone/modules/homepage.dart';
import 'package:instagram_clone/modules/accountpage.dart';
import 'package:instagram_clone/modules/reelspage.dart';
import 'package:instagram_clone/modules/searchpage.dart';
import 'package:instagram_clone/modules/newsharepage.dart';
import 'package:instagram_clone/provider/myprovider.dart';
import 'package:provider/provider.dart';


class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {

    List<Widget> modules =[
       const HomePage(),
       const SearchPage(),
       const NewSharePage(),
       const ReelsPage(),
       const AccountPage()
    ];

  int _currentIndex=0;

  void onTapHandler(int index, MyProvider  myProvider){
    setState(() {
      if(index != 2){
    _currentIndex=index;
  return;
      }
      myProvider.layoutIndexToggle(0);
    });
  }
  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<MyProvider>(context);
    return 
    SafeArea(
      child: Scaffold(
         backgroundColor: Colors.black,
        body:Stack(
          alignment: Alignment.bottomCenter,
          children: [
             
           InkWell(
            highlightColor: Colors.transparent,
            onTap: (){
              setState(() {
                  myProvider.toggleIsBottomDrawerOpened(context,false);
                });
            },
            child: modules[_currentIndex]),
               
            
              AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              curve: Curves.fastOutSlowIn,
              width: double.infinity,
              height: myProvider.getBottomDrawerHeight,
              decoration:  BoxDecoration(
                color: bottomDrawerColor,
                boxShadow:[
                  BoxShadow(
                    color: widgetsColor as Color, 
                    offset:const Offset(0, -0.1),
                    spreadRadius: .5,
                    blurRadius: 1  
                  )
                ],
                borderRadius: const BorderRadiusDirectional.only(topStart:Radius.circular( 32.0), topEnd: Radius.circular( 32.0))
              ),)
          ],
        ),
        
        bottomNavigationBar: !myProvider.getIsBottomDrawerOpened ? BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index)=>onTapHandler(index,myProvider),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items:  [
           const BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.white,),label: " "),
           const BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: " "),
            const BottomNavigationBarItem(icon:  Icon(Icons.add_box_outlined,color: Colors.white,),label: " "),
           const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.clapperboard,color: Colors.white,),label: " "),
           BottomNavigationBarItem(icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50)
              ,),
            ),label: " "),
          ])
          : const SizedBox()
        
        ));
  }
}