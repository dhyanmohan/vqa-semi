import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class output extends StatelessWidget {
  final String apiresult;

  output(this.apiresult);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> jsonMap = json.decode(apiresult);
    List<dynamic> data = jsonMap['data'];
    String firstValue = data[0];
    String secondValue = data[1];
    String thirdValue = data[2];

    return Scaffold(
        appBar: AppBar(
          title: Text('Search Result'),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/result.jpg',
                  ),
                ),
                margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
                height: 300,
                width: 300,
              ),
            ),
            const Center(
              child: SizedBox(
                child: Text(
                  'Here we go :)',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 300, 20),
              child: Text(
                'Answer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: EdgeInsets.all(10),
              height: 40,
              width: 380,
              child: Text(
                firstValue,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 40, 270, 20),
              child: Text(
                'Explaination',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 380,
              child: Text(secondValue,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            )
          ],
        )

        // Center(
        //   child: Text(secondValue),
        // ),
        );
  }
}
