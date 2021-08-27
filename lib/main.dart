import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Color primaryColor = Color(0xFF1e184d);

  Container _buildStatBox(Color bgColor, Color barColor, String number, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: bgColor,
      ),
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: barColor,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: primaryColor
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: primaryColor
            ),
          ),
        ])
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget statSection = Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                '213 CONTACTS',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatBox(Color(0xFFf7e4eb), Color(0xFFf56298), '92', 'Numero ORANGE'),
                _buildStatBox(Color(0xFFe6dcac), Color(0xFFf5d640), '78', 'Numero MTN'),
                _buildStatBox(Color(0xFFb5f7a6), Color(0xFF61fa3e), '43', 'Numero MOOV'),

              ],
            )
          ]
        )
      )
    );
    Widget buttonSection = Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFebecf7),
      ),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children:[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                '10', 
                style: TextStyle(
                  fontSize: 140,
                  fontWeight: FontWeight.w900
                ),
              ),
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: primaryColor.withOpacity(0.9),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Passer à 10',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                )
              ),
            )
          ])
      )
    );

    Widget pubSection = Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFebecf7),
      ),
      child: Container(
        height: 120,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children:[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Nouvelle numerotation',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ),
                  Text(
                    'Il vous reste 30 jours avant le passage a la nouvelle numerotation',
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  )
                ]
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.close,
                size: 30.0,
              )
            )
          ])
      )
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        scaffoldBackgroundColor: Color(0xFFdfe7f5),
          primaryColor: primaryColor,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Contact migration'),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 15.0),
            children: [
              statSection,
              buttonSection,
              pubSection
            ]
          ),
        )
    );
  }
}
