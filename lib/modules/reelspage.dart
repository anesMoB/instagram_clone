import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/componants/my_reel.dart';
import 'package:provider/provider.dart';
import '../provider/myprovider.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  var pageConrtoller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
        final myProvider = Provider.of<MyProvider>(context);

    return  GestureDetector(
      onVerticalDragStart: (details) {
        if (kDebugMode) {
          print('scroll To top');
        }
      },
      child: PageView(
        controller: pageConrtoller,
        scrollDirection: Axis.vertical,
        children:  [
          MyReel(reelModel: myProvider.getReels[0],reelIndex:0),
          MyReel(reelModel: myProvider.getReels[1],reelIndex:1),
          MyReel(reelModel: myProvider.getReels[2],reelIndex:2),
          MyReel(reelModel: myProvider.getReels[3],reelIndex:3),
        ],
      ),
    );
  }
}