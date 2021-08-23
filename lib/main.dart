import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Button Widget',
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Button Widget'),),
      backgroundColor: Colors.white,
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("ON Tap");
        var snackBar= SnackBar(content: Text("On Tap"),);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      child: Container(
        height: 50,
        width: 100,
        alignment: Alignment.center,
        child: Text("My Button"),
      ),
    );
  }
}
