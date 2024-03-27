import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  Random random = Random();
  int x = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Lottery App', style: TextStyle(color: Colors.white),),

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               Center(child: Text('Lottery winning number is your number $x')),
            SizedBox(
              height: 30,
            ),
                 Container(
                   height: 250,

                   decoration: BoxDecoration(
                   color: Colors.pink.withOpacity(0.3),
                     borderRadius: BorderRadius.circular(30)

                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(20),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                        Icon(Icons.error, color: Colors.red, size: 30,),
                         SizedBox(
                           height: 40,
                         ),
                         Text('Better Luck your number is $x \ntry Again', textAlign: TextAlign.center)
                       ],
                     ),
                   ),
                 )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            // print(random.nextInt(10).toString());
            x = random.nextInt(100);
            print(x);
            // print('Tap');
          },
          child: Icon(Icons.refresh ),
        ),
      ),
    );
  }
}
