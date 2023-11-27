
import 'package:flutter/material.dart';
import 'package:instagram_clone/constatns/style.dart';
import 'package:instagram_clone/layouts/page_view..dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

class SplahsScreen extends StatefulWidget {
  const SplahsScreen({Key? key}) : super(key: key);

  @override
  State<SplahsScreen> createState() => _SplahsScreenState();
}

class _SplahsScreenState extends State<SplahsScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splash: SplashScreenContent(context),
      splashIconSize: 600,
      nextScreen:  MyPageView(),
      duration: 2200,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
Widget SplashScreenContent(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.black,
    body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(child: Image(image: AssetImage("assets/ic_launcher.png"),width:220,height: 220)),
              
              const SizedBox(height: 15,),
              Text("From",style: TextStyle(color: widgetsColor)),
              const SizedBox(height: 15,),
              const Text("Meta",style: TextStyle(color: Colors.white,fontFamily: "OleoScript",fontSize: 24))
              
            ],
          ),
        ),
      ),
    ),
  );
}

