import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/globals/style.dart';
import 'personel_controller.dart';


class PersonalView extends StatelessWidget {

  final PersonalController controller = Get.find<PersonalController>();


  @override
  Widget build(BuildContext context) {
    //print(controller.personalList[1].data[1].lastName);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'List Of Personels',
          style: Style.buildTextStyle(Colors.white),
        ),
      ),
      body: Obx(()=>  ListView.builder(
        itemCount: controller.personalList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.personalList[index].firstName),
            subtitle: Text('Subtitle'),
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
            ),
          );
        },
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
