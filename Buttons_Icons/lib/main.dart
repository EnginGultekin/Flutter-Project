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
        title: Text('Buttons and Icons'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: IconButton(
          onPressed: (){
            print('Hey Mann..');
          },
          icon: Icon(Icons.alternate_email),
          iconSize: 62,
          color: Colors.pink,
        ),


    /* 1- Icons
        child: Icon(
          Icons.airport_shuttle,
          size: 72,
          color: Colors.lightBlue,
        ),
      2- Buttons
        child: FlatButton(
          onPressed: () {
            print('Clicked Me Man');
          },
          child: Text('Press Me'),
          color: Colors.lightBlue,
        ),

       3-Icon ve Button aynı anda
        child: RaisedButton.icon(
          onPressed: (){},
          icon: Icon(
            Icons.mail
          ),
          label: Text('Mail ME'),
          color: Colors.amber,
        ),

        */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Clik'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
