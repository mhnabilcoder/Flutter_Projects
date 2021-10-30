

import 'package:birthday_reminder/ui/add_birthday.dart';
import 'package:birthday_reminder/ui/menu_screen.dart';
import 'package:birthday_reminder/ui/notifications_screen.dart';
import 'package:birthday_reminder/ui/person_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);


    @override
    Widget build(BuildContext context) {
      List<String>birthdaynames = <String>[
        'Nabil',
        'Sayed',
        'Saiful',
        'Shihab',
        'Sharif',
        'Sajib',
        'Antor',
        'Shams',
        'Sian',
      ];

      List<String>birthdates = <String>[
        '10/08/2003',
        '13/02/2000',
        '23/03/2002',
        '13/07/2001',
        '13/09/2002',
        '13/12/2003',
        '13/10/2003',
        '13/06/2004',
        '13/08/2005',
      ];

      TextEditingController searchController = new TextEditingController();


      return Scaffold(
        drawer: MenuScreen(),

        appBar: AppBar(
          title: Text("BirthDay Reminder",style: TextStyle(fontSize: 25),),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsScreen(),)),
                  child: Icon(Icons.message,size: 30,)),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add,size: 40,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddBirthday(),));
          },
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
        ),

        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Theme.of(context).primaryColor,),
                    labelText: 'Search',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor
                      )
                    )
                  ),
                ),
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: birthdaynames.length,
                itemBuilder: (context, index) {
                  return Dismissible(key: Key(birthdaynames[index]), child: Card(

                    child: ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PersonDetails(),));
                      },
                      leading: CircleAvatar(child: Text("${birthdaynames[index][0]}")),
                      title: Text("${birthdaynames[index]}"),
                      subtitle: Text("${birthdates[index]}"),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                    ),
                  ));
                },

              ),
            ],
          ),
        ),
      );
    }
  }

