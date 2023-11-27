import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/constatns/style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<Widget> items=[
  Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 242.2,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 242.2,
  ),
  Container(
    color:widgetsColor,
    width: 300,
    height: 242.2,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 242.2,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 242.2,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 242.2,
  ),
  Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),
  Container(
    color:widgetsColor,
    width: 300,
    height: 242.2,
  ),
    Container(
    color:widgetsColor,
    width: 200,
    height: 242.2,
  ),
   Container(
    color:widgetsColor,
    width: 200,
    height: 120,
  ),

];
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.only(top: 16),
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
                    padding: const EdgeInsets.only(top: 16,bottom: 8),
                    child: MasonryGridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    itemBuilder: (context, index) {
                    return items[index];
                    }
                            ),
                  ),
              
                ],
              )
                 
    ));
  }
}