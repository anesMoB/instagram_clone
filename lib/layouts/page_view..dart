

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/layouts/main_layout.dart';
import 'package:instagram_clone/layouts/messages.dart';
import 'package:instagram_clone/layouts/new_publication.dart';
import 'package:instagram_clone/provider/myprovider.dart';
import 'package:provider/provider.dart';

class MyPageView extends StatefulWidget {
   MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageView();
}


class _MyPageView  extends State<MyPageView> {
  
  
  @override
  Widget build(BuildContext context) {
        final myProvider = Provider.of<MyProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: myProvider.getLayoutController,
        children:  const [
            NewPublication(),
            MainLayout(),
            MessagesPage()
        ],
      ),
    );
  }
}