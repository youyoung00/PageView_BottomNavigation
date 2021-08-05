var express = require("express");
const { type } = require("os");
var app = express();
var path = require("path");

app.listen(3000);
app.use(express.json());

// HTTP
// - get
// - post : url 자체 사용 불가능 -> 기능적으로 사용 / 웹에서 단순 테스트는 어려움.

// URL
// http://localhost:3000/path?value1 = 값 & value2 = 값2
// http://localhost:3000 : endPoint, domain 도메인(localhost:3000)
// / : 기본 페이지 (요청)
// /news : news path(news 경로)
// ? value1 = 값2 : queryString 쿼리스트링
// -> value1 쿼리스트링, value2 쿼리스트링

app.get('/', (req,res) => res.json("<h1>Hi json</h1>"));
//app.get('/',(req,res) => res.send("<h1>Hi send</h1>"));

app.get('/',(req,res) => {
    var reqCheck = req.headers["user-agent"];
    var index = reqCheck.indexOf("Chrome");
    if(index > -1){
        return res.send("안녕하세요, 웹 ?");
    }
    return res.json("안녕하세요, 모바일 ??");
});

app.get('/check/123',(req,res) => res.json("123123"));
app.get('/check/:date',(req,res) => {
    var date = req.params.date;
    var id = req.query.id;

    res.send(`date:${date}, id:${id}`);
});

//Headers : 사용자의 정보
//body : 사용자가 보낸 정보
app.get('/data', function(req,res){
  // 정적인 경로
  let reqHeader = req.headers["user-agent"];
  res.json(reqHeader);
// Header : 서버의 정보
// body : 서버가 보내는 데이터
});
// 쿼리스트링으로 데이터를 주고 받는 라우터
// node.js 는 위에서 순서대로 실행 됨. 
// 동적 라우터와의 순서 관계 유의. 
app.get('/data/qs',function(req,res){
  let value1 = req.query['value1'];
  res.json(value1);
});

// /:id 동적인 경로를 가진 라우터
app.get('/data/:id', function(req,res){
  
  let id = req.params['id'];
  res.json(id);
});

var datas = [
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