import 'package:faculty_scheduler/data/session_data.dart';
import 'package:faculty_scheduler/data/session_model.dart';
import 'package:faculty_scheduler/widgets/session_card.dart';
import 'package:flutter/material.dart';

class SessionScreen extends StatefulWidget {
  SessionModel obj = SessionModel();
  SessionScreen(this.obj);

  @override
  _SessionScreenState createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String notes;
  bool isAdd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isAdd = !isAdd;
          });
        },
        child: Icon(Icons.add),
      ),
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Class'),
        backgroundColor: Colors.green[300],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SessionCard(widget.obj),
              SizedBox(height: 30),
              Container(
                child: Text(
                  'Notes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    decorationThickness: 3.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              notes == null
                  ? Container()
                  : Container(
                      height: 50,
                      child: Text(notes),
                    ),
              SizedBox(height: 10),
              isAdd == false
                  ? Container()
                  : Column(
                      children: [
                        Container(
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                notes = value;
                              });
                            },
                            maxLines: 1,
                            decoration: InputDecoration(labelText: 'Add notes'),
                          ),
                        ),
                        SizedBox(height: 20),
                        RaisedButton(
                          child: Text("Save"),
                          onPressed: () {
                            setState(() {
                              isAdd = !isAdd;
                            });
                            _scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text("Notes Added"),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
