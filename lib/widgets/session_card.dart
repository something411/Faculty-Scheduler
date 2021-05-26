import 'package:flutter/material.dart';

import '../data/session_model.dart';

class SessionCard extends StatelessWidget {
  SessionModel dummyAccept = SessionModel();
  SessionCard(this.dummyAccept);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.12,
      width: double.infinity,
      child: Card(
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(dummyAccept.subject,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              Text(dummyAccept.section),
              Text("${dummyAccept.year} Sem"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(dummyAccept.time),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
