import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/home_widgets/home_content.dart';
import 'package:flutter_application_1/pages/home/home_widgets/home_drawer.dart';
import 'package:flutter_application_1/pages/home/home_widgets/home_fab.dart';
import 'package:flutter_application_1/pages/home/home_widgets/home_appbar.dart';

import 'home_widgets/home_list_model.dart';
//
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar(),
      drawer: getHomeDrawer(),
      floatingActionButton: getHomeFab(),
      body: HomePageContent(),
    );
  }

  refreshPage() {
    setState(() {});
  }
}