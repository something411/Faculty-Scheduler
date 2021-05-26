import 'package:faculty_scheduler/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:faculty_scheduler/data/prof_data.dart';
import '../data/prof_model.dart';

class ProfileScreen extends StatelessWidget {
  int index = 0;
  ProfDummyData myData = ProfDummyData();
  ProfModel obj = ProfModel();
  ProfileScreen(this.obj);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: [
                Container(
                  height: screenHeight * 0.4,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                        'lib/assets/images/green-background-blur.jpg'),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.275,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        AssetImage("lib/assets/images/download.jpg"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: screenHeight * 0.5,
              width: double.infinity,
              margin: EdgeInsets.all(25.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: screenWidth),
                        obj.name == null
                            ? Text(
                                myData.dummyDetails[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              )
                            : Text(
                                obj.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                        SizedBox(height: 10),
                        obj.designation == null
                            ? Text(
                                myData.dummyDetails[index].designation,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            : Text(
                                obj.designation,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  obj.idNo == null
                      ? Text(
                          'ID Number: ${myData.dummyDetails[index].idNo}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      : Text(
                          'ID Number: ${obj.idNo}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                  SizedBox(height: 15),
                  obj.email == null
                      ? Text(
                          'E-Mail: ${myData.dummyDetails[index].email}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      : Text(
                          'E-Mail: ${obj.email}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                  SizedBox(height: 15),
                  obj.phNo == null
                      ? Text(
                          'Phone Number: ${myData.dummyDetails[index].phNo}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      : Text(
                          'Phone Number: ${obj.phNo}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                  SizedBox(height: 15),
                  obj.researchInterest == null
                      ? Text(
                          'Research Interest: ${myData.dummyDetails[index].researchInterest}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      : Text(
                          'Research Interest: Not Specified',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.power_settings_new),
                      label: Text('Log Out'),
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
