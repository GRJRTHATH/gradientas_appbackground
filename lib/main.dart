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
      title: 'Yuri Grj',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yuri & Moon Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yuri&Moon"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
    height: 500,
    child: Center(child: Text("Its Yuri Grj",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
    decoration: BoxDecoration(
    gradient: LinearGradient(  //you caan also use RadialGradient
              colors: [
             Color(0xffa18cd1),Color(0xfbc2eb)

              ],
      begin: FractionalOffset(1.0,0.5),
      end: FractionalOffset(0.0,1.5),
      stops: [0.0,1.0],
    )
    ),
    ),
          ],
        ),
      ),
    );
  }
}
