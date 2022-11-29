import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/home_widgets/home_list_item.dart';
import 'package:flutter_application_1/pages/home/home_widgets/home_list_model.dart';


class HomePageContent extends StatefulWidget {
  const HomePageContent({key}) : super(key: key);

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  List<HomeListModel> listMockedList = [
    HomeListModel(
      title: "Servicos", 
      assetIcon: "assets/icons/pata2.png",
    ),
    HomeListModel(
      title: "Loja", 
      assetIcon: "assets/icons/pata2.png",
    ),
    HomeListModel(
      title: "Nao sei oq colocar", 
      assetIcon: "assets/icons/pata2.png",
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255,0,75,200),
            Color.fromARGB(255,75,175,255),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: ListView.builder(
        itemCount: listMockedList.length, 
        itemBuilder:(context, index) {
          return HomeListItem(
            homeListModel: listMockedList[index],
          );
        },
      ),
    );
  }
}