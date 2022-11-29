import 'package:flutter/material.dart';

Drawer getHomeDrawer(){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color(0xff191970)),
          accountName: Text("Nome do cliente"),
          accountEmail: Text("emaildocliente@hotmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "NM",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings, 
            color: Color(0xff191970),
          ),
          title: Text(
            "Configurações",
          ),
        ),
         ListTile(
          leading: Icon(
            Icons.arrow_back_sharp, 
            color: Color(0xff191970),
          ),
          title: Text(
            "Sair",
          ),
        )
      ],
    ),
  );
}