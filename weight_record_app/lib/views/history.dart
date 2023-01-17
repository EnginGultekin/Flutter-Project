import 'package:android_pro/view-models/controller.dart';
import 'package:android_pro/widgets/record_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/record.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  /// Controller Sınıfını buraya inject ettik yani Controller sınıfındaki değişkenlerin hepsine ulaşabiliriz oluşturduğuöuz obje üzerinden
  final Controller _controller = Get.put(Controller());


  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;
    /// NOTE: 'Obx' Set State görevi yapmaktadır bu yüzden onunla sarmaladık
    return Obx(
        () => Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('History'),
              actions: [
                IconButton(onPressed: () => _controller.addRecord(),  icon: Icon(Icons.add)),
              ],
            ),
            body: records.isEmpty
                ? Center(
              child: Container(
                child: Text('Please Add Some Record '),
              ),
            )
                : ListView(
              // aşağıdaki satır IOS cihazlardaki, gibi tavanı aşağıya doğru çekmemizi sağlıyor
                physics: BouncingScrollPhysics(),
                children: records.map((recordObject) =>
                    RecordListTile(recordObject: recordObject)
                ).toList()
            ),
        ),
    );
  }
}
