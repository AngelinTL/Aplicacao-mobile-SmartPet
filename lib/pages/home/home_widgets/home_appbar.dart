import 'package:flutter/material.dart';

AppBar getHomeAppBar(){
  return AppBar(
    title: Text("Smart Pet"),
    centerTitle: true,
    backgroundColor: Color(0xff191970),
    actions: [ 
      IconButton(
        icon: Icon(
          Icons.more_vert_rounded, 
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}