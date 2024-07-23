import 'package:flutter/material.dart';
import 'buttonwidget.dart';

class Homess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 950) {
                  // Large screen layout (Row)
                  return Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height:
                              screenHeight, // Set height to total height of the screen
                          color:
                              Color.fromARGB(255, 78, 193, 250), // Blue color
                          child: Container(
                            color: Color.fromARGB(255, 78, 193, 250),
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Yesterday's Tasks",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text("Comcast Squirrel",
                                        style: TextStyle(fontSize: 18)),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      size: 30,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Color.fromARGB(255, 23, 23, 23),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.drafts,
                                      size: 30,
                                      color: Color.fromARGB(255, 255, 0, 0),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text(
                                      "LR Drop 102B",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      size: 30,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.drafts,
                                      size: 30,
                                      color: Color.fromARGB(255, 231, 255, 92),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text("Aerial ST 29s",
                                        style: TextStyle(fontSize: 18)),
                                    Spacer(),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.drafts,
                                      size: 30,
                                      color: Color.fromARGB(255, 30, 255, 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          height:
                              screenHeight, // Set height to total height of the screen
                          color: Color.fromARGB(255, 255, 255, 255),
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.notifications),
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {
                                      // Define the action for the button here
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.calendar_month),
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {
                                      // Define the action for the button here
                                    },
                                  ),
                                  Text('Logout'),
                                ],
                              ),
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Hi, Zach!",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "Create Task",
                                      style: TextStyle(
                                          fontSize: 45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomButton(
                                          text: "AERIAL",
                                          onPressed: () {
                                            // Action for Button 1
                                          },
                                        ),
                                        SizedBox(width: 10),
                                        CustomButton(
                                          text: "SPLICING",
                                          onPressed: () {
                                            // Action for Button 2
                                          },
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomButton(
                                          text: "UNDERGROUND",
                                          onPressed: () {
                                            // Action for Button 3
                                          },
                                        ),
                                        SizedBox(width: 10),
                                        CustomButton(
                                          text: "STEMC DROPS",
                                          onPressed: () {
                                            // Action for Button 4
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                } else if (constraints.maxWidth > 600) {
                  // Medium screen layout (Column)
                  return Column(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 78, 193, 250),
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yesterday's Tasks",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("Comcast Squirrel"),
                                Spacer(),
                                Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.delete,
                                  size: 30,
                                  color: Color.fromARGB(255, 23, 23, 23),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.drafts,
                                  size: 30,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("LR Drop 102B"),
                                Spacer(),
                                Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.delete,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.drafts,
                                  size: 30,
                                  color: Color.fromARGB(255, 231, 255, 92),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("Aerial ST 29s"),
                                Spacer(),
                                Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.delete,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.drafts,
                                  size: 30,
                                  color: Color.fromARGB(255, 30, 255, 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.notifications),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    // Define the action for the button here
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.calendar_month),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    // Define the action for the button here
                                  },
                                ),
                                Text('Logout'),
                              ],
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Hi, Zach!",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "Create Task",
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomButton(
                                        text: "AERIAL",
                                        onPressed: () {
                                          // Action for Button 1
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      CustomButton(
                                        text: "SPLICING",
                                        onPressed: () {
                                          // Action for Button 2
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomButton(
                                        text: "UNDERGROUND",
                                        onPressed: () {
                                          // Action for Button 3
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      CustomButton(
                                        text: "STEMC DROPS",
                                        onPressed: () {
                                          // Action for Button 4
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  // Small screen layout (Single Column for buttons)
                  return Column(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 78, 193, 250),
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yesterday's Tasks",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("Comcast Squirrel"),
                                Spacer(),
                                Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.delete,
                                  size: 30,
                                  color: Color.fromARGB(255, 23, 23, 23),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.drafts,
                                  size: 30,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("LR Drop 102B"),
                                Spacer(),
                                Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.delete,
                                  size: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.drafts,
                                  size: 30,
                                  color: Color.fromARGB(255, 231, 255, 92),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("Aerial ST 29s"),
                                Spacer(),
                                Icon(
                                  Icons.drafts,
                                  size: 30,
                                  color: Color.fromARGB(255, 30, 255, 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.notifications),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    // Define the action for the button here
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.calendar_month),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    // Define the action for the button here
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.logout),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    // Define the action for the button here
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Hi, Zach!",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "Create Task",
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomButton(
                                    text: "AERIAL",
                                    onPressed: () {
                                      // Action for Button 1
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  CustomButton(
                                    text: "SPLICING",
                                    onPressed: () {
                                      // Action for Button 2
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  CustomButton(
                                    text: "UNDERGROUND",
                                    onPressed: () {
                                      // Action for Button 3
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  CustomButton(
                                    text: "STEMC DROPS",
                                    onPressed: () {
                                      // Action for Button 4
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
