import 'package:faculty_scheduler/screens/schedule_screen.dart';
import 'package:faculty_scheduler/screens/sign_up_screen.dart';
import '../data/prof_model.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> emailsList = [
    'something@test.edu',
    'random@test.edu',
    'anything@test.edu'
  ];
  List<String> passList = ['password@123', 'asdfg102', 'lamepassword'];
  ProfModel obj = ProfModel();

  final GlobalKey<FormState> myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String email;
    String password;

    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.green[300],
        body: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(45),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    'Faculty Scheduler',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 100),
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
                  SizedBox(height: 50),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.black,
                    onPressed: () {
                      myKey.currentState.save();
                      print(email);
                      print(password);
                      if (emailsList.contains(email) &&
                          passList.contains(password)) {
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
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 200),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No Account?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}