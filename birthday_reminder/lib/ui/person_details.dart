
import 'package:flutter/material.dart';

class PersonDetails extends StatelessWidget {
  const PersonDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert,size: 25,),
          ),
        ],
      ),
    );
  }
}

