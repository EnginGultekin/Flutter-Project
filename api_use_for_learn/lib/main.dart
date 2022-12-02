import 'package:api_use_for_learn/data/model/load_data.dart';
import 'package:api_use_for_learn/data/provider/loadData_provider.dart';
import 'package:api_use_for_learn/data/globals/style.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'API'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: FutureBuilder<LoadData>(
        future: apiCall(),
        builder:(context, snapshot){
          if(snapshot.hasData){
            return Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Kullanıcı Adı: ${snapshot.data?.username}',
                      style:  Style.buildTextStyle(Colors.red),
                    ),
                    Text(
                        'E-Posta: ${snapshot.data?.email}',
                      style:  Style.buildTextStyle(Colors.orange),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }

}
