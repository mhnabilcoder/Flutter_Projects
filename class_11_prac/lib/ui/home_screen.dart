import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String>birthdaynames=<String>[
      'Nabil','Sayed','Saiful','Shihab','Sharif','Sajib','Antor','Shams','Sian','Shakib',
      'Raihan','Nishat','Fardin','Rafa','Halim','Jalim','dalim',
    ];
    return Scaffold(
      appBar: AppBar(

        title: Text("BirthDay Reminder",style: TextStyle(fontSize: 30.0),),
      centerTitle: true,
      leading: Icon(Icons.menu,size: 40.0,),
        actions: [Icon(Icons.add,size: 37.0,)],
      ),

      body:
          ListView.builder(itemBuilder: (context, index) {

            return ListTile(
               leading: CircleAvatar(child: Text("${birthdaynames[index][0]}")),
              title: Text("${birthdaynames[index]}"),
              subtitle: Text("Birthday:"),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },)

    );
  }
}
