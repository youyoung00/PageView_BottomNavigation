import 'package:flutter/material.dart';
import 'package:selfproject_layout/Pages/Views/HomeView.dart';
import 'package:selfproject_layout/Pages/Views/SearchView.dart';
import 'package:selfproject_layout/Pages/Views/SettingView.dart';
import 'package:selfproject_layout/Pages/Views/ThrView.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _bottomNum = 0;
  PageController? _pageController;

  List<Widget> _Views = [new HomeView(), new SearchView(), new ThrView(), new SettingView()];

  @override
  void initState() {
    this._pageController = new PageController();
    super.initState();
  }

  @override
  void dispose() {
    this._pageController?.dispose();
    super.dispose(
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Logo"),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: PageView.builder(
        onPageChanged: (int i){
          setState(() {
            this._bottomNum = i;
          });
        },
        //physics: NeverScrollableScrollPhysics(),
        controller: this._pageController,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index){
          return this._Views[index];
        }
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        onTap: (index){
          this._pageController?.jumpToPage(index);
          setState(() {
            this._bottomNum = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: this._bottomNum,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_compact_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          )
        ],
      ),
    );
  }
}
