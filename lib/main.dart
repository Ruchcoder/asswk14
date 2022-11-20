import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,

        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 250, 30, 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(" Smart \n Insurance \n here!",
                      style: Theme.of(context).textTheme.headline2,


                  ),

                  Text("\n Find all your needs faster \nthan ever",
                    style: TextStyle(
                           color: Colors.white
                    ),
                  ),


                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      textStyle: TextStyle(fontSize: 20),
                      primary: Colors.purpleAccent,
                      onPrimary: Colors.blue,
                    ),
                      child: Text("New Account"),
                      onPressed: () {},
                  ),


                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(160, 50),
                        textStyle: TextStyle(fontSize: 20),
                        primary: Colors.white,
                        side: BorderSide(width: 3, color: Colors.white)
                      ),
                      onPressed: (){}, child: Text("Sign In"),)


                ],
              )
          )
        ],
      ),
    );
  }
}
