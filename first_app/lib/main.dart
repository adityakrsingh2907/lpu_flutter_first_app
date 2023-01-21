import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    // appBar: AppBar(title: Text("My First App")),
    body: SafeArea(
      child: MyCounterStatefulWidget(),
    ),
  )));
}

class MyCounterStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCounterStatefulWidgetState();
  }
}

class MyCounterStatefulWidgetState extends State<MyCounterStatefulWidget> {
  int mynumber = 10;
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    mynumber = getDataFromDb();
    textEditingController.text = "Aditya";
    super.initState();
  }

  int getDataFromDb() {
    return 13;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text("Number"),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Text(mynumber.toString()),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: onpressedminus, child: Text("-")),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(onPressed: onPressedplus, child: Text("+")),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          color: Colors.amber[300],
          child: TextField(
            controller: textEditingController,
            onChanged: (text) {
              print(text);
              if (text.contains("bad")) {
                setState(() {
                  textEditingController.clear();
                });
              }
            },
          ),
        )
      ],
    );
  }

  void onpressedminus() {
    setState(() {
      mynumber = mynumber - 1;
    });
    print("Pressed - sign : " + mynumber.toString());
  }

  void onPressedplus() {
    setState(() {
      mynumber = mynumber + 1;
    });
    print("Pressed + sign : " + mynumber.toString());
  }
}
























// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(170.0),
//       child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         Container(
//           child: Text(
//             "Login with your mobile",
//             style: TextStyle(color: Colors.grey[600]),
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Stack(
//           children: [
//             Container(
//               width: 120,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.green.shade100, width: 2),
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               child: SizedBox(
//                   child: Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: Container(
//                   child: Text("8318608020"),
//                 ),
//               )),
//             ),
//             Positioned(
//               right: -1,
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.green.shade100, width: 2),
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: Icon(
//                   Icons.check,
//                   color: Colors.blue[400],
//                 ),
//               ),
//             )
//           ],
//         )
//       ]),
//     );
//   }
// }






// void main() {
//   Student St1 = Student(name: "Aditya", age: 21);
//   Student st2 = Student.withoutAge("Aparna");
//   // St1.name = "Aditya";
//   // St1.age = 21;

//   // Student.collegename = "Lovely Professional University";

//   // st2.setname("Great Aparna You did it !!");
//   // print(st2.getname());
//   // St1.study();
//   // print(Student.Collegen());
//   ITGuy rahul =
//       ITGuy(myname: "Rahul", myage: 21); // Constructor of Extended Class
//   rahul.setItname("Rahul Baba");
//   rahul.getname();
//   print(rahul.getname());

//   // st2.study();
// }

// class Student {
//   String? _name;
//   int? _age;

//   static String?
//       collegename; // Static variable:- It's value remains same for all instances not only for a particular instance

//   Student({required String name, required int age}) {
//     //Constructor 1
//     _name = name;
//     _age = age;
//     print("Called Student Constructor");
//   }

// //Cosntructor2
//   Student.withoutAge(String name) {
//     _name = name;
//   }

//   String? getname() {
//     //getter declared
//     return _name; //underscore represents private
//   }

//   void setname(String name) {
//     _name = name;
//   }

//   static String? Collegen() {
//     //static function to get College name
//     return collegename;
//   }

//   void study() {
//     print("$_name is a good person");
//   }
// }

// class ITGuy extends Student implements WriteCode, TestCode, GiveInterview {
//   String? itname;
//   ITGuy({required String myname, required int myage})
//       : super(name: myname, age: myage) {
//     print("Called ITGuy Constructor");
//   }
//   void setItname(String name) {
//     itname = name;
//   }

//   @override
//   String? getname() {
//     return itname;
//   }

// //Implement the methods
//   @override
//   writeCode() {
//     return "IT Code";
//   }

//   @override
//   bool giveInterview() {
//     return true;
//   }

//   @override
//   bool testCode() {
//     return true;
//   }
// }

// //Interfaces
// class WriteCode {
//   String writeCode() {
//     return "Code";
//   }
// }

// class GiveInterview {
//   bool giveInterview() {
//     return true;
//   }
// }

// class TestCode {
//   bool testCode() {
//     return true;
//   }
// }




  // Map<String, String> myStringmap = {
  //   "1": "Aditya",
  //   "2": "Aparna",
  //   "3": "Abhishek",
  //   "4": "Naveen",
  //   "5": "Shreyash"
  // };
  // myStringmap.forEach((key, value) { //Using For Each to Access Elements of Map using Key value
  //   print('$key:$value');
  // });

  // Map<String, Map<int, String>> myStringmap = {
  //   "1": {3: "Aditya"}
  // };
  // print(myStringmap["1"]![3]); //prints Aditya ...requires bang Operator because dart is not aware of wether value is present on 3 position in inner map or not

  // Map<int, String> myStringmap = Map();
  // Map<int, String> myStringmap = {1: "Abhishek"};
  // // myStringmap[1] = "Aditya";
  // // myStringmap.addEntries(4:"Aparna",6:"Ayush");
  // myStringmap.addAll({2: "Vishal", 3: "Amit"});
  // myStringmap[1] = "Aditya";
  // print(myStringmap[1]); //prints Aditya


//CustomWidget

// class MyCustomWidget extends StatelessWidget {
//   final Color mycolor;
//   final double myHeight;

//   const MyCustomWidget({required this.mycolor, required this.myHeight});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: myHeight,
//           color: mycolor,
//         ),
//         SizedBox(
//           height: 10,
//         )
//       ],
//     );
//   }
// }











//           child: Container(
// color: Colors.grey,
// // width: 150,
// child: Stack(
//   fit: StackFit.loose,
//   alignment: AlignmentDirectional.topStart,
//   children: [
//     ...getMyWidgets(),
//   ],
// ),

// child: ListView(
//   children: [
//     ...getMyWidgets(),
//   ],
// ),

// child: SingleChildScrollView(
//   scrollDirection: Axis.vertical,
//   physics: BouncingScrollPhysics(),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       ...getMyWidgets(),
//       SizedBox(
//         height: 20,
//       ),
//       Container(
//         height: 20,
//         color: Colors.black,
//       )
//     ],
//   ),
// ),

// List<Widget> getMyWidgets() {
//   List<Color> myContainerColors = [
//     Colors.amber,
//     Colors.black,
//     // Colors.blue,
//     // Colors.green,
//     // Colors.pink,
//     // Colors.indigo,
//     // Colors.teal,
//     // Colors.yellow.shade200,
//   ];

//   List<Widget> myResult = [];

//   for (var i = 0; i < myContainerColors.length; i++) {
//     myResult.add(Container(
//       // color: myContainerColors[i].withAlpha(100),
//       child: Positioned(
//         // left: (i == 1) ? 10 : 0,
//         // top: (i == 1) ? 10 : 0,
//         child: Container(
//           width: 100 / (i + 1),
//           height: 100 / (i + 1),
//           color: myContainerColors[i],
//           child: Center(
//               child: Icon(
//             Icons.alarm_on,
//             size: 30,
//           )),
//         ),
//       ),
//     ));
//   }

//   return myResult;
// }

// child: Container(
//   color: Colors.grey[350],
//   width: double.infinity,
//   child: Column(
//       // crossAxisAlignment: CrossAxisAlignment.stretch,
//       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         SizedBox(
//           height: 10,
//         ),
//         // Tab1
//         Container(
//           padding: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//             color: Colors.blue[300],
//             border: Border.all(
//                 color: Color.fromARGB(255, 20, 20, 21), width: 2),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           width: 430,
//           height: 60,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 8,
//               ),
//               Container(child: Text("17/01/2023")),
//               SizedBox(
//                 height: 3,
//               ),
//               Container(child: Text("Fetch Milk From Market")),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         //tab2
//         Container(
//           padding: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//             color: Colors.blue[300],
//             border: Border.all(
//                 color: Color.fromARGB(255, 20, 20, 21), width: 2),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           width: 430,
//           height: 60,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 8,
//               ),
//               Container(child: Text("24/01/2023")),
//               Container(child: Text("Pay Electricity Bill")),
//               SizedBox(
//                 height: 3,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         //  tab3
//         Container(
//           padding: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//             color: Colors.blue[300],
//             border: Border.all(
//                 color: Color.fromARGB(255, 20, 20, 21), width: 2),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           width: 430,
//           height: 60,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 8,
//               ),
//               Container(child: Text("28/01/2023")),
//               Container(child: Text("Complete Futter Assignment")),
//               SizedBox(
//                 height: 3,
//               ),
//             ],
//           ),
//         ),
//       ]),

// child: Container(
//   color: Colors.grey,
//   // width: double.infinity,
//   height: double.infinity,
//   width: double.infinity,
//   child: Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Container(
//           color: Colors.red,
//           child: Text("I am Red"),
//         ),
//         Container(
//           color: Colors.blue,
//           child: Text("I am Blue"),
//         ),
//         Container(
//           color: Colors.green,
//           child: Text("I am Green"),
//         ),
//       ]),
// ),

//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     // crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: [
//       // child1
//       Container(
//         color: Colors.red[400],
//         height: double.infinity,
//         child: Column(children: [
//           Row(children: [
//             Text("I am Red"),
//           ])
//         ]),
//       ),

//       Container(
//         color: Colors.blue[400],
//         height: double.infinity,
//         child: Column(children: [
//           Row(children: [
//             Text("I am Blue"),
//           ])
//         ]),
//       ),

//       Container(
//         color: Colors.green[400],
//         height: double.infinity,
//         child: Column(children: [
//           Row(children: [
//             Text("I am green"),
//           ])
//         ]),
//       ),
//     ],
//   ),
// ))
//Sometimes upper area things can come below notification bar in phones so wrap the body of Scafflod in SafeArea
//         child: Center(
//   child: Container(
//     width: 200,
//     height: 200,
//     child: Center(
//       child: Container(
//         child: Text("Spider Man", style: TextStyle(color: Colors.white)),
//       ),
//     ),
//     decoration: BoxDecoration(
//         border: Border.all(color: Colors.blue.shade400, width: 20.0),
//         borderRadius: BorderRadius.circular(50),
//         image: DecorationImage(
//           image: AssetImage("images/spiderflutter.jpg"),
//         )),
//   ),

//   //   child: Center(
//   //       child: Container(
//   // padding: EdgeInsets.all(10.0),
//   // color: Colors.blue[200],
// ))

//   child: Container(
// // color: Colors.red[400],
// width: 200,
// height: 200,
// decoration: BoxDecoration(
//   // color: Colors.green[400],
//   // border: Border.all(color: Colors.green.shade900, width: 5),
//   borderRadius: BorderRadius.circular(50),
//   gradient: LinearGradient(
//       colors: [Colors.orange, Colors.white, Colors.green],
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter),
//   boxShadow: [
//     BoxShadow(
//         color: Colors.black45,
//         offset: Offset(-0, -0),
//         blurRadius: 10,
//         spreadRadius: 10),
//     BoxShadow(
//         color: Colors.orange.shade600,
//         offset: Offset(-0, -0),
//         blurRadius: 40,
//         spreadRadius: 20)
//   ],
// ),

// padding: EdgeInsets.all(120.0),
// child: Container(
//   color: Colors.red[400],
//   // padding: EdgeInsets.all(50.0),
//   margin: EdgeInsets.all(120.0),
//   child: Container(
//     color: Colors.blue[300],
//     // padding: EdgeInsets.all(20.0),
//     margin: EdgeInsets.all(50.0),
//     child: Container(
//       color: Colors.green[300],
//       margin: EdgeInsets.all(20.0),
//     ),
//   ),
// ),


