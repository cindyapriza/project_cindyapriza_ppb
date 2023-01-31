import 'dart:html';
import 'package:flutter/material.dart';
import 'package:project_cindyapriza/Email.dart';
import 'package:project_cindyapriza/Instagram.dart';
import 'package:project_cindyapriza/WhatsApp.dart';

//GridView

class project_anggun_fania extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), 
        primary: false,
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: 
            TextButton(
              child:Text("Emails"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Email();
                }));
              },
                
            ),
            color: Colors.orange[200],
          ),
     /*
          Container(
            padding: const EdgeInsets.all(8),
            child: 
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Instagram();
                }));
              },
              child: 
                Text("Instagram"),
          ),
            color: Colors.green[900],
          ),
        Container(
          padding: const EdgeInsets.all(8),
          child: 
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WhatsApp();
                }));
              },
            child: Text("WhatsApp"),
            ),
          color: Colors.red[200],
          ),
           Container(
          padding: const EdgeInsets.all(8),
          child: 
            TextButton(
              onPressed: () {
                
              }
            )    
          ),
  */
        ],
        )
      );
  }
}