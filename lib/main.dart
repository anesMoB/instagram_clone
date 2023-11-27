import 'package:flutter/material.dart';
import 'package:instagram_clone/layouts/page_view..dart';
import 'package:instagram_clone/modules/splash_screen.dart';
import 'package:instagram_clone/provider/myprovider.dart';
import 'package:provider/provider.dart';

import 'layouts/messages.dart';

void main() {
 WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> MyProvider(),)
    ],
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme:  ThemeData(
          textTheme:const TextTheme(
            displayLarge: TextStyle(
              color: Colors.white,
              fontFamily: 'OleoScript-Regular'
            ),
            displayMedium: TextStyle(
              color: Colors.white
            ),
            displaySmall: TextStyle(
              color: Colors.white
            ),
            titleLarge: TextStyle(
              
              fontFamily: 'OleoScript',
              color: Colors.white,
              fontSize: 28.0,
            
              
            ),
            titleMedium: TextStyle(
              fontFamily: 'OleoScript',
              color: Colors.white,
              fontSize: 24.0,            ),
          ),
          iconTheme:const IconThemeData(
            color: Colors.white
          ),
        ),
        home: const SplahsScreen(),
      ),
    );
  }
}
