import 'package:flutter/material.dart';
import 'package:project_cindyapriza/Email.dart';
import 'package:project_cindyapriza/Instagram.dart';
import 'package:project_cindyapriza/WhatsApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> tags = ['WhatsApp','Email','Instagram',];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 123, 8, 113),
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor:  Color.fromARGB(255, 38, 148, 226),
          elevation: 0,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.verified_user,
                  color: Color.fromARGB(255, 200, 61, 51)
                )
              ),
          ],
        ),
        //bagian user
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/cindy.jpg'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Cindy Apriza',
                            style:
                                TextStyle(fontSize: 20, color: Color.fromARGB(255, 248, 247, 248))),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Color.fromARGB(224, 255, 255, 255),
                                size: 17,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    'Sumatera Selatan, Palembang, Karang Anyar ',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 16,
                                        letterSpacing: 3,
                                        wordSpacing: 2),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                      )
                  ),
              ],
            ),
            //bagian sosial media
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text(
                      '337',
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 42, 175, 236)),
                    ),
                    Text('Pengikut',
                        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)))
                  ]),
                  Column(children: <Widget>[
                    Text(
                      '227',
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 29, 172, 234)),
                    ),
                    Text('Mengikuti',
                        style: TextStyle(fontSize: 18, color: Colors.white))
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16, top: 8, bottom: 8),
                        child: Text(
                          'Follow',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.black54],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)
                      ),
                    ),
                  )
                ],
              ),
            ),
            //bagian tags
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 45,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Colors.purple, Colors.blueAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                        /*
                        Text(
                          tags[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        */
                        TextButton(
                      child:Text(tags[index]),
                      onPressed: () => 
                        index == 0 ?
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WhatsApp()))
                        : index == 1 ?
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Email()))
                        : index == 2 ?
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Instagram()))
                        : "",
                      
                
            ),
                      ),
                    );
                  }
                ),
            ),
            //bagian autobiography
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 4.0),
              margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 4.0),
              height: 500,
              width: double.infinity,
              child: Card(
                child: Container(
                    color: Colors.blueAccent[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 30, right: 20, left: 70, bottom:  15),
                  child: Text ('Biodata Mahasiswa', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.black)),
                  ),
                        Padding(
                    padding:const EdgeInsets.all(15.0),
                    child:Row( 
                    children: <Widget>[
                      Icon(Icons.person_pin),
                      Text( 'Nama       : Cindy Apriza', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
                        )
                      ]
                    ),
                      ),
                        Padding(
                    padding:const EdgeInsets.all(15.0),
                    child:Row( 
                    children: <Widget>[
                      Icon(Icons.dialpad),
                   Text('NPM        : 021200050', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
                          )
                        ]
                        ),
                      ),
                    Padding(
                    padding:const EdgeInsets.all(15.0),
                    child:Row( 
                    children: <Widget>[
                      Icon(Icons.date_range),
                   Text('TTL          : Palembang, 09 April 2002', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
                          )
                        ]
                      ),
                    ),
                    Padding(
                    padding:const EdgeInsets.all(15.0),
                    child:Row( 
                    children: <Widget>[
                      Icon(Icons.contact_mail),
                    Text('E-mail      : cindyapriza22@gmal.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize:18)
                         )
                       ]
                      ),
                    ),
                    Padding(
                    padding:const EdgeInsets.all(15.0),
                    child:Row( 
                    children: <Widget>[
                      Icon(Icons.contact_phone),
                    Text('Telepon   : 081994267295', style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18)
                          )
                        ]
                      ),
                    ),
                    Padding(
                    padding:const EdgeInsets.all(15.0),
                    child:Row( 
                    children: <Widget>[
                      Icon(Icons.home),
                    Text('Alamat    : Banyuasin', style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18)
                          )
                         ]
                       ),
                      ),
                    ],
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}