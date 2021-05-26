import 'package:faculty_scheduler/data/prof_data.dart';
import 'package:faculty_scheduler/data/prof_model.dart';
import 'package:faculty_scheduler/screens/credits_screen.dart';
import 'package:faculty_scheduler/screens/login_screen.dart';
import 'package:faculty_scheduler/screens/profile_screen.dart';
import 'package:faculty_scheduler/screens/timetable_screen.dart';
import 'package:faculty_scheduler/widgets/add_session.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  int index = 0;
  ProfDummyData dummyData = ProfDummyData();
  ProfModel obj = ProfModel();
  MyDrawer(this.obj);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    launchURL() async {
      const url = 'https://www.https://www.urbandictionary.com/define.php?term=Jebaited';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.green[700],
            height: screenHeight * 0.25,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: () {})
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      child: CircleAvatar(
                        radius: 30,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          obj.name == null
                              ? dummyData.dummyDetails[index].name
                              : obj.name,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(obj.email == null
                            ? dummyData.dummyDetails[index].email
                            : obj.email),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.62,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(obj),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person,
                        ),
                        SizedBox(width: 15),
                        Text('Profile',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                // Notifications are not ready to be implemented
                // GestureDetector(
                //   onTap: () {},
                //   child: Container(
                //     width: double.infinity,
                //     height: 40,
                //     // color: Colors.blue,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Icon(Icons.notifications_active),
                //         SizedBox(width: 15),
                //         Text(
                //           'Notifications',
                //           style: TextStyle(fontWeight: FontWeight.bold),
                //         ),
                //         SizedBox(width: 50),
                //         Switch(
                //           activeColor: Colors.green[700],
                //           value: true,
                //           onChanged: (value) {},
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TimeTableScreen()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.view_list),
                        SizedBox(width: 15),
                        Text('View Timetable',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                //Also not ready to be implemented
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => AddSession(() {}),
                //       ),
                //     );
                //   },
                //   child: Container(
                //     width: double.infinity,
                //     height: 40,
                //     // color: Colors.deepPurple,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Icon(Icons.add),
                //         SizedBox(width: 15),
                //         Text('Add class',
                //             style: TextStyle(fontWeight: FontWeight.bold)),
                //       ],
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreditScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    // color: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.card_travel),
                        SizedBox(width: 15),
                        Text('Credits',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => launchURL(),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.refresh),
                        SizedBox(width: 15),
                        Text(
                          'MJCET website',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 180),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.redAccent[100],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.power_settings_new,
                          color: Colors.red[900],
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Logout',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
