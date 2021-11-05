import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Greeting card app"),
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
        body: Column(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8G6PFuF1EGQf3QPaZbcpivebmGJIN7BgHQg&usqp=CAU",width:500,height: 500,fit: BoxFit.cover,),
              Padding(
                padding: const EdgeInsets.only(top:10,),
                child: Container(
                  height: 90,
                  width: 500,
                  color: Colors.pink,
                  child: Center(
                    child: Text("Happy Birthday ",style: TextStyle(
                      fontSize: 30,
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                    ), ),
                  ),
                ),
              )
            ]
        )
    );
  }
}
