import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.cyanAccent,
          backgroundColor: Colors.amber,
          title: Text("Flutter Bootcamp" , style: TextStyle( fontSize: 25.0, fontWeight: FontWeight.bold),),
          centerTitle: true,
          leading: InkWell(
              onTap: (){
                print("do something");
              },
              child: Icon(Icons.menu, size: 50.0,)),
          actions: [
            InkWell(
              onTap: (){
                print("object");
              },
                child: Icon(Icons.account_circle,size: 35.0,)),
          ],
          bottom: PreferredSize(
              child: Container(
                color: Colors.blue,
                height: 10.0,
              ),
              preferredSize: Size.fromHeight(4.0)),


        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.accessibility_new), label: Text("JOin Us")),
            )
          ],
        ) ,

        ),
      debugShowCheckedModeBanner: false,
    );
  }
}
