import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: Home(),
    )
);

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Containers and Pandding'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        //padding: EdgeInsets.fromLTRB(40.0, 35.0, 45.0, 30.0),
        //padding : EdgeInsets.all(35.0),
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
        margin: EdgeInsets.all(60.0),  //Bunuda yukardaki gibi kullanabiliriz
        color: Colors.grey[400],
        child: Text('Hey Man'),
      ),
      /*
      Padding(
        padding: EdgeInsets.all(90.0),
        child: Text('Hey Man'),
        // Bunda ne renk ne Margin var o yüzden Container daha iyi
      ),
        */

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );

  }
}
