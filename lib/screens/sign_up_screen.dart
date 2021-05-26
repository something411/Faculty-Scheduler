import 'package:faculty_scheduler/data/prof_model.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:faculty_scheduler/screens/schedule_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> myKey = GlobalKey<FormState>();

  ProfModel obj = ProfModel();

  @override
  Widget build(BuildContext context) {
    String name;
    String idNo;
    String email;
    String password;
    String phNo;
    String designation;
    String researchInterest;
    File image;

    // double screenHeight = MediaQuery.of(context).size.height;

    Future selectImage() async {
      final _image = await ImagePicker().getImage(source: ImageSource.camera);
      setState(() {
        image = File(_image.path);
      });
    }

    return Scaffold(
        backgroundColor: Colors.green[300],
        body: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(45),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Faculty Scheduler',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    onSaved: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Name",
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onSaved: (value) {
                      setState(() {
                        idNo = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "ID Number",
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onSaved: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "College E-mail ID",
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onSaved: (value) {
                      setState(() {
                        phNo = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Phone Number",
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onSaved: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Password",
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onSaved: (value) {
                      setState(() {
                        designation = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Designation",
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onSaved: (value) {
                      setState(() {
                        researchInterest = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Research Interest(optional)",
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.black,
                      onPressed: () {
                        myKey.currentState.save();
                        setState(
                          () {
                            obj.name = name;
                            obj.idNo = idNo;
                            obj.email = email;
                            obj.phNo = phNo;
                            obj.password = password;
                            obj.designation = designation;
                            obj.researchInterest = researchInterest;
                          },
                        );
                        if (name != null &&
                            idNo != null &&
                            email != null &&
                            password != null &&
                            designation != null) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScheduleScreen(obj),
                            ),
                          );
                        } else {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text("Invalid Credentials"),
                          ));
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
