import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/home_widgets/home_list_model.dart';

class HomeListItem extends StatefulWidget{
  final HomeListModel homeListModel;
  HomeListItem({required this.homeListModel});
  

  @override
  _HomeListItemState createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem>{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        children:[
          Container(
            height: 15, 
            decoration: BoxDecoration(
              color: Color.fromARGB(255,0,75,200),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(widget.homeListModel.assetIcon),
                      Padding(padding:EdgeInsets.only(left: 15)),
                      Text(
                        widget.homeListModel.title,
                        style: TextStyle(
                          color: Color.fromARGB(255,0,75,200),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
        ],      
      ),
    );
  }
}
