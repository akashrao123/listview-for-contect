import 'package:flutter/material.dart';
import 'package:listapp/contact/akash.dart';
import 'package:listapp/contact/prakash.dart';
import 'package:listapp/contact/prateen.dart';
import 'package:listapp/contact/pravin.dart';
import 'package:listapp/contact/prayag.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List arrdata = ["akash", "prakash", "prateek", "praveen", "prayag"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("contect no")),
        body: Container(
          child: ListView.builder(
            itemCount: arrdata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onDoubleTap: () {
                  if (arrdata[index] == "akash") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Akash()),
                    );
                  } else if (arrdata[index] == "prakash") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => prakash()),
                    );
                  } else if (arrdata[index] == "prateek") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => prateek()),
                    );
                  } else if (arrdata[index] == "praveen") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pravin()),
                    );
                  } else if (arrdata[index] == "prayag") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Prayag()),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.red,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text(arrdata[index])),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
