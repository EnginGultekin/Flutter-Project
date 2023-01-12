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
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.asset('assets/space-2.jpg'),    // asset yerine network yazıp link verebiliriz
            // image: AssetImage('assets/space-1.jpg'),
        // Alt tarafta sadece link verdik üst tarafta dosya içinden resim dosyasının ismini verdik
            // image: NetworkImage('http://wonderfulengineering.com/wp-content/uploads/2014/04/space-wallpapers-6.jpg'),
         // ),
        /*child: Text(
          'Hello Honney !',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'IndieFlower',
          ),
        ), */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('clik'),
        backgroundColor: Colors.red[600],
      ),
    );

  }
}
