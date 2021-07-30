import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  // 함수의 활용 첫번째의 데이터 리팩토링
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

  @override
  void initState() {
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
            this._topBanner(),
            //동일 함수의 다른 데이터 구현방식 1
            // this._eventList(event: List.of(_eventItems1) , title: _title1.toString()),
            // this._eventList(event: List.of(_eventItems2) , title: _title2.toString()),
            //동일 함수의 다른 데이터 구현방식 2
            // this._eventList(event: List.of(this._eventItems[0]["eventItemList"]), title: this._eventItems[0]["eventTitle"].toString()),
            // this._eventList(event: List.of(this._eventItems[1]["eventItemList"]), title: this._eventItems[1]["eventTitle"].toString()),
            //동일 함수의 다른 데이터 구현방식 3
            Container(
              child: Column(
                children: this._eventItems.map<Widget>((Map<String,dynamic> e ) => this._eventList(event: e["eventItemList"], title: e["eventTitle"])).toList(),
              ),
            ),
            Container()
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
              // map함수, foreach 두가지는 요소 반복 사용 시, 매우 자주 쓰임.
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
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 300, // Container는 처음 만들었을 때 크기체크가 반드시 필요. color, height, width로 확인.
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
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(event[i]["eventImgUrl"])
                            )
                          ),
                        ),
                      ),
                      Container(
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
}
