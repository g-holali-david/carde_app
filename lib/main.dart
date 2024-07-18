import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String mytext = "SALON DE BEAUTE";
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 100.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  Text(
                    'Tatiane YAO',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    mytext,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      color: Colors.teal[100],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 180.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        size: 25.0,
                        color: Colors.teal,
                        Icons.phone,
                      ),
                      title: Text(
                        '+33 7 63 15 25 91',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                        leading: Icon(
                          size: 25.0,
                          color: Colors.teal,
                          Icons.email,
                        ),
                        title: Text(
                          'davsholali@gmail.com',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontSize: 20.0,
                            fontFamily: 'Source Sans Pro',
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
