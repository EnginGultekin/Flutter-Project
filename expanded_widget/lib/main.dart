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
        title: Text('Rows and Columns'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),

      body: Row(
        children: <Widget>[

           Expanded(
             flex: 3,
               child: Image.asset('assets/space-1.jpg')
           ),

          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pink,
              child: Text('1'),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.amber,
            child: Text('2'),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text('3'),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.green[500],
      ),
    );
  }
}
