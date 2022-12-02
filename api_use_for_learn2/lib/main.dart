import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/moduls/personel.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.orange,
        primarySwatch: Colors.orange,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => PersonalView(),
          binding: PersonalBinding(),

        ),
    ],
    );
  }
}

