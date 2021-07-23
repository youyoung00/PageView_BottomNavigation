import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> _selectNum = ["select0", "select1", "select2"];
  int _selectIndex = 0;
  List<String> _imgs = [
    "https://images.unsplash.com/photo-1511919884226-fd3cad34687c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1542362567-b07e54358753?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1494905998402-395d579af36f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          this._topBanner(),
          Container(),
          Container(),
          Container()
        ],
      )
    );
  }

  Widget _topBanner(){
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 20.0, bottom: 15.0),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Title",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
              ),
            ),
          ),
          Container(
            //alignment: Alignment.topCenter,
            //height: 300,
            //color: Colors.lightGreen,
            child: Row(
              // map함수, foreach 두가지는 요소 반복 사용 시, 매우 자주 쓰임.
              children: this._selectNum.map<Widget>(
                (String e) => Expanded(
                  child: TextButton(
                    onPressed: (){
                      //this._selectIndex = this._selectNum.indexOf(e);
                      print(this._selectNum.indexOf(e));
                      setState(() {
                        this._selectIndex = this._selectNum.indexOf(e);
                      });
                    },
                    child: Text(
                      e,
                      style: TextStyle(
                        color: this._selectIndex == this._selectNum.indexOf(e)
                          ? Colors.red // 맞으면
                          : Colors.grey
                      ),
                    ),
                  ),
                )
              ).toList()
            )
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 300, // Container는 처음 만들었을 때 크기체크가 반드시 필요. color, height, width로 확인.
            child: PageView.builder(
              itemCount: this._imgs.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  //color: Colors.indigo,
                  //child: Text(index.toString()),
                  child: Column(
                    children: [
                      Expanded( // Expanded로 비율을 설정(기본1)
                        child: Container(
                          //color: Colors.red,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(this._imgs[index])
                            )
                          ),
                        ),
                      ),
                      Container(
                        //color: Colors.brown,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(10.0),
                        child: Text("item$index"),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      )
    );
  }
}
