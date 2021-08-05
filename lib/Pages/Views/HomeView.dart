import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:selfproject_layout/Pages/DitailPage/ShowCar_detailPage.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  String? sdata;

  //함수의 활용 첫번째의 데이터 리팩토링
  String _title1 = "감성 올드카 특별전";
  String _title2 = "캠핑 SUV 특별전";

  List<Map<String,String>> _eventItems1 = [

    {
      "saleImgUrl" : "https://images.unsplash.com/photo-1613027917127-75568701dde4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG9sZGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "saleName" : "Car No.1",
      "salePrice" : "300,000,000원"
    },
    {
      "saleImgUrl" : "https://images.unsplash.com/photo-1507682226856-bbd49d1bfa5a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fG9sZGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "saleName" : "Car No.2",
      "salePrice" : "200,000,000원"
    },
    {
      "saleImgUrl" : "https://images.unsplash.com/photo-1591186448336-d859f60f94b5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fG9sZGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "saleName" : "Car No.3",
      "salePrice" : "100,000,000원"
    }
  ];

  List<Map<String,String>> _eventItems2 = [
    {
      "saleImgUrl" : "https://images.unsplash.com/photo-1563720223523-491ff04651de?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3V2JTIwY2Fyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
      "saleName" : "Jeep",
      "salePrice" : "48,400,000원"
    },
    {
      "saleImgUrl" : "https://images.unsplash.com/photo-1612057473166-af2affdb92ad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c3V2JTIwY2Fyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
      "saleName" : "Ford",
      "salePrice" : "63,900,000원"
    },
    {
      "saleImgUrl" : "https://images.unsplash.com/photo-1539703061-473d7576d772?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHN1diUyMGNhcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
      "saleName" : "Land Rover",
      "salePrice" : "67,700,000원"
    },
  ];

  //함수활용 두번째 방식의 데이터 리팩토링
  List<Map<String,dynamic>> _eventItems = [
    {
      "eventTitle" : "감성 올드카 특별전",
      "eventItemList" : [
        {
          "eventImgUrl" : "https://images.unsplash.com/photo-1613027917127-75568701dde4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG9sZGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
          "eventName" : "Car No.1",
          "eventPrice" : "300,000,000원"
        },

        {
          "eventImgUrl" : "https://images.unsplash.com/photo-1507682226856-bbd49d1bfa5a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fG9sZGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
          "eventName" : "Car No.2",
          "eventPrice" : "200,000,000원"
        },
        {
          "eventImgUrl" : "https://images.unsplash.com/photo-1591186448336-d859f60f94b5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fG9sZGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
          "eventName" : "Car No.3",
          "eventPrice" : "100,000,000원"
        }
      ],
    },

    {
      "eventTitle" : "캠핑 SUV 특별전",
      "eventItemList" : [
        {
          "eventImgUrl" : "https://images.unsplash.com/photo-1563720223523-491ff04651de?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3V2JTIwY2Fyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
          "eventName" : "Jeep",
          "eventPrice" : "48,400,000원"
        },
        {
          "eventImgUrl" : "https://images.unsplash.com/photo-1612057473166-af2affdb92ad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c3V2JTIwY2Fyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
          "eventName" : "Ford",
          "eventPrice" : "63,900,000원"
        },
        {
          "eventImgUrl" : "https://images.unsplash.com/photo-1539703061-473d7576d772?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHN1diUyMGNhcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
          "eventName" : "Land Rover",
          "eventPrice" : "67,700,000원"
        },
      ]
    }
  ];

  PageController? _pageController;
  List<String> _selectNum = ["람보르기니", "맥라렌", "머스탱"];
  int _selectIndex = 0;
  List<String> _imgs = [
    "https://images.unsplash.com/photo-1511919884226-fd3cad34687c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1542362567-b07e54358753?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1494905998402-395d579af36f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  ];

  Map<String,dynamic> _showYourCar = {
    "title" : "My Car Best",
    "userCar" : [
      [
        {
          "img" : "https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c21hbGwlMjBjYXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
        },
        {
          "img" : "https://images.unsplash.com/photo-1617130471410-72724fcc5f6b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHNtYWxsJTIwY2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
        }
      ],
      [
        {
          "img" : "https://images.unsplash.com/photo-1527786356703-4b100091cd2c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FtcGluZyUyMGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
        },
        {
          "img" : "https://images.unsplash.com/photo-1593914370442-49d414beca24?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA2fHxjYW1waW5nJTIwY2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
        }
      ]
    ],
  };


  @override
  void initState() {
    Future.microtask(() async{
      http.Response res = await http.get("http://192.168.219.137:3000");
      String data = json.decode(res.body);
      setState(() {
        sdata = data;
      });
      print(res.body);
      print(res.headers);
      return;
    });
    //서버로부터 받은 데이터를 dart 문법에 맞게 해석하는 것 : json.decode()
    //dart 코드를 서버로 보낼 경우 : json.encode()

    this._pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    this._pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text(this.sdata ?? "로딩 중..."),
            //함수로 묶음 후, 실행하여 구현.
            this._topBanner(),
            //동일 함수의 다른 데이터 구현방식 1
            this._events(),
            //동일 함수의 다른 데이터 구현방식 2
            // this._eventList(event: List.of(this._eventItems[0]["eventItemList"]), title: this._eventItems[0]["eventTitle"].toString()),
            // this._eventList(event: List.of(this._eventItems[1]["eventItemList"]), title: this._eventItems[1]["eventTitle"].toString()),
            //동일 함수의 다른 데이터 구현방식 3
            // this._eventList(event: List.of(_eventItems1) , title: _title1.toString()),
            // this._eventList(event: List.of(_eventItems2) , title: _title2.toString()),
            this._showCar()
          ],
        )
      ),
    );
  }

  Widget _topBanner(){
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 25.0, bottom: 5.0),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "인기 슈퍼카",
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
              // map 함수, foreach 두가지는 요소 반복 사용 시, 매우 자주 쓰임.
              children: this._selectNum.map<Widget>(
                (String e) => Expanded(
                  child: TextButton(
                    onPressed: (){
                      //print(this._selectNum.indexOf(e));
                      this._pageController!.jumpToPage(this._selectNum.indexOf(e));
                      setState(() {
                        this._selectIndex = this._selectNum.indexOf(e);
                      });
                    },
                    child: Text(
                      e,
                      style: TextStyle(
                        color: this._selectIndex == this._selectNum.indexOf(e)
                          ? Colors.red // 맞으면
                          : Colors.grey //틀리
                      ),
                    ),
                  ),
                )
              ).toList()
            )
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            height: 300, // Container 는 처음 만들었을 때 크기체크가 반드시 필요. color, height, width로 확인.
            child: PageView.builder(
              controller: this._pageController,
              onPageChanged: (int i){
                setState(() {
                  this._selectIndex = i;
                });
              },
              itemCount: this._imgs.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  //color: Colors.indigo,
                  //child: Text(index.toString()),
                  child: Column(
                    children: [
                      Expanded( // Expanded 로 비율을 설정(기본1)
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
                        child: Text("No.$index"),
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
  Widget _eventList({required List event, required String title }){
    return Container(
      height: 300,
      //color: Colors.red,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10.0,left: 20.0, bottom: 10.0),
            alignment: Alignment.centerLeft,
            //color: Colors.blue,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 200,
            padding: EdgeInsets.only(left: 10.0),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: event.length,
              itemBuilder: (BuildContext context, int i){
                return Container(
                  //width: 100,
                  //color: Colors.blueGrey,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.brown,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(event[i]["eventImgUrl"])
                            )
                          ),
                        ),
                      ),
                      Container(
                        //color: Colors.brown,
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              event[i]["eventName"].toString(),
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(event[i]["eventPrice"].toString())
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      )
    );
  }
  Widget _events(){
    return Container(
      child: Column(
        children: this._eventItems.map<Widget>((Map<String,dynamic> e ) => this._eventList(event: e["eventItemList"], title: e["eventTitle"])).toList(),
      ),
    );
  }
  /// 기획을 구현하는데 최적의 위젯구조 설계 -> 데이터 구조 설계 -> 설계에 따른 코드 작성.
  /// 위젯 구조 : 아이템이 늘어나지 않고 고정 개수를 유지하는 UI로 GridView, ListView X. Column&Low로 구현하기
  /// 데이터 구조 : Map(title,item) 안에 List[optionUp, PriceDown] 안에 List[optionUp1,2][PriceDown1,2] 의 구조.
  Widget _showCar(){
    List _userCarList = List.generate(List.of(this._showYourCar["userCar"]).length +1, (index) => index);
    return Container(
      child: Column(
        children: _userCarList.map<Widget>((e){
          if(_userCarList.indexOf(e) == 0)
            return Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                this._showYourCar["title"].toString(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            );
          return Container(
            height: 250.0,
            child: Row(
              children: List.of(this._showYourCar["userCar"][e-1]).map<Widget>(
                (v) => Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailPage())
                      );
                    },
                    child: Container(
                      margin: this._showYourCar["userCar"][e-1].indexOf(v) == 0
                        ? EdgeInsets.only(right: 5.0, bottom: 10.0)
                        : EdgeInsets.only(left: 5.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(v["img"].toString())
                        )
                      ),
                    ),
                  ),
                )
              ).toList()
            ),
          );
        }).toList()
        // children: [
        //   Container(
        //     //color: Colors.blue,
        //     margin: EdgeInsets.only(left: 10.0,bottom: 10.0),
        //     alignment: Alignment.centerLeft,
        //     child: Text(
        //       this._showYourCar["title"],
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 24.0
        //       ),
        //     ),
        //   ),
        //   Container(
        //     height: 200,
        //     child: Row(
        //       children: [
        //         Expanded(
        //           child: Container(
        //             margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
        //             //color: Colors.red,
        //             decoration: BoxDecoration(
        //               image: DecorationImage(
        //                 fit: BoxFit.fill,
        //                 image: NetworkImage(this._showYourCar["usersCar"][0][0]["img"])
        //               )
        //             ),
        //           ),
        //         ),
        //         Expanded(
        //           child: Container(
        //             margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
        //             //color: Colors.green,
        //             decoration: BoxDecoration(
        //               image: DecorationImage(
        //                 fit: BoxFit.fill,
        //                 image: NetworkImage(this._showYourCar["usersCar"][0][1]["img"])
        //               )
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   Container(
        //     height: 200,
        //     child: Row(
        //       children: [
        //         Expanded(
        //           child: Container(
        //             margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
        //             //color: Colors.red,
        //             decoration: BoxDecoration(
        //               image: DecorationImage(
        //                 fit: BoxFit.cover,
        //                 image: NetworkImage(this._showYourCar["usersCar"][1][1]["img"])
        //               )
        //             ),
        //           ),
        //         ),
        //         Expanded(
        //           child: Container(
        //             margin: EdgeInsets.only(left: 5.0, bottom: 10.0),
        //             //color: Colors.green,
        //             decoration: BoxDecoration(
        //               image: DecorationImage(
        //                 fit: BoxFit.cover,
        //                 image: NetworkImage(this._showYourCar["usersCar"][1][0]["img"])
        //               )
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
