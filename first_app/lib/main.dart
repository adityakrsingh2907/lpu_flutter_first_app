import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        // appBar: AppBar(title: Text("My First App")),
        body: SafeArea(
      child: Container(
        color: Colors.grey,
        // width: double.infinity,
        height: double.infinity,
        width: double.infinity,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                child: Text("I am Red"),
              ),
              Container(
                color: Colors.blue,
                child: Text("I am Blue"),
              ),
              Container(
                color: Colors.green,
                child: Text("I am Green"),
              ),
            ]),
      ),
    )),
  ));
}



































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
 
