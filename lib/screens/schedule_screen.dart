import 'package:faculty_scheduler/data/prof_model.dart';
import 'package:faculty_scheduler/data/session_data.dart';
import 'package:faculty_scheduler/screens/session_screen.dart';
import 'package:faculty_scheduler/widgets/session_card.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class ScheduleScreen extends StatelessWidget {
  SessionDummyData dummyObj = SessionDummyData();
  ProfModel obj = ProfModel();
  ScheduleScreen(this.obj);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Faculty Scheduler',
        ),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[300],
      drawer: MyDrawer(obj),
      body: ListView.separated(
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      SessionScreen(dummyObj.dummyList[index]),
                ),
              );
            },
            child: SessionCard(dummyObj.dummyList[index]),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 5),
        itemCount: dummyObj.dummyList.length,
      ),
    );
  }
}
