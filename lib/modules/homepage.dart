import 'package:flutter/material.dart';

import '../../componants/my_posts.dart';
import '../../componants/stories.dart';
import '../../componants/my_navbar.dart';
import 'package:instagram_clone/provider/myprovider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
        final myProvider = Provider.of<MyProvider>(context);

    return  SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:  <Widget> [
                  // Navbar --------
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child:MyNavBar(
                      titleWidegt: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("Instagram" ,style: Theme.of(context).textTheme.titleLarge ),
                      const Icon(Icons.keyboard_arrow_down),
                        
                      ],
                    ),
                    
                      firstWidget:  Stack(
                          alignment: Alignment.topRight,
                          children: [
                            const Icon(Icons.favorite_border_outlined,size: 30,color: Colors.white,),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(80)
                            ),)
                          ],
                        ),
                        
                      secondWidget: InkWell(
                        onTap: () {
                                myProvider.layoutIndexToggle(2);
                        },
                        child: const  Image(image: AssetImage('./assets/icons/messengerw.png'),
                           width: 25,height: 25,filterQuality:FilterQuality.high,fit: BoxFit.cover,),
                      )
                     
                    )
                  ),
                  // Stories --------
                 const MyStories(),
                  // POSTS --------- 
                 const  MyPosts()  ,   
                 
                       
                ]),
            ),
    );
  }
}