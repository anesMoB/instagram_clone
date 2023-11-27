import 'package:bottom_sheet_bar/bottom_sheet_bar.dart';
import 'package:flutter/material.dart';


class BottomDrawer extends StatefulWidget {
  
  const BottomDrawer({super.key});

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  bool isOpened=false;


  @override
  Widget build(BuildContext context) {
    return BottomSheetBar(
      locked: isOpened,
    expandedBuilder: (scrollController) => ListView.builder(
        controller: scrollController, 
        itemBuilder: (context, index) => ListTile(title: Text(index.toString())),
        itemCount: 50,
    ),
    collapsed:const Text('Collapsed toolbar widget'),
    body:const Text('Content overlayed by toolbar and bottom sheet'),
);
  }
}