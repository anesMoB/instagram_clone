
import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  final Widget titleWidegt;
  final Widget firstWidget;
  final Widget secondWidget;
  const MyNavBar({super.key ,
    required this.titleWidegt,
    required this.firstWidget,
    required this.secondWidget,
  
  });

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    widget.titleWidegt,
                    const Spacer(),
                    Row(
                      children: [
                       widget.firstWidget,
                       const SizedBox(width: 25,),
                       widget.secondWidget
                        ],
                    )
                  ],
                );
  }
}