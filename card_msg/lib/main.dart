import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Message Card App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  String message = "";
  Color themeColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message Card App"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 260.0,
              color: themeColor,
              child: Center(
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: controller,
                maxLength: 30,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your message",
                  helperText: "Enter message for your loved ones",
                  prefixIcon: Icon(Icons.edit),
                ),
                onChanged: (String txt) {
                  setState(() {
                    message = txt;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              hoverElevation: 12.0,
              onPressed: () {
                controller.clear();
              },
              child: Text(
                "Clear the Card",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.red;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.green;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.blue;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.yellow;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
