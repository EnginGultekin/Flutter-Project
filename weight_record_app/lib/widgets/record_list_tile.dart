
// Bu ekran  Kilo tarih  ve bu bilgileri düzenle ve sil icon butonları  sayfasıdır
// Biz bu sayfayı direkt ekranda göstermiyoruz  bu sayfayı liste içinde kullanarak birden fazla gösteriyoruz

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../models/record.dart';
import '../thema_data.dart';
import '../view-models/controller.dart';

class RecordListTile extends StatefulWidget {
 final Record recordObject;
 RecordListTile({required this.recordObject});

  @override
  State<RecordListTile> createState() => _RecordListTileState();
}

class _RecordListTileState extends State<RecordListTile> {
  ///  bir yerde  bir kez  Get.put() kullanıldığı zaman bidaha kullanmak yerine  bu satırı kullanırız
  final  Controller _controller = Get.put(Controller());
  


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Colors.green,
          style: BorderStyle.solid,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 6),
        child: ListTile(
          // intl DateTime'ı istediğimiz formata dönüştürmemizi sağlıyor  aşağıdaki gibi
          leading: buildDate(),
          title: buildWeight(),
          trailing: buildIcons(),
        ),
      ),
    );
  }



  Row buildIcons() {
    return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.blue[300],
              ),
            ),
            IconButton(
              onPressed: () {
                _controller.deleteRecord(widget.recordObject);
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red[400],
              ),
            ),
          ],
        );
  }
  Center buildWeight() => Center(child: Text(widget.recordObject.weight.toString(), style:  recordListWeightStyle,));
  Text buildDate() => Text(DateFormat('EEE, MMM d').format(widget.recordObject.datTime), style: recordListDateStyle,);

}
