
import 'package:get/get.dart';
import '../models/record.dart';

class Controller extends GetxController {
  int count = 0;
  // alt satırdaki liste Records kayıtları tutan bir "Stremdir"
  var records = <Record>[

    Record(weight: 64, datTime: DateTime.now() , note: 'OCAK'),
    Record(weight: 63, datTime: DateTime.now() , note: 'Mayıs'),
    Record(weight: 62, datTime: DateTime.now() , note: 'Mart'),
    Record(weight: 61, datTime: DateTime.now() , note :'Nisan'),
    Record(weight: 60, datTime: DateTime.now() , note: 'Eylül'),
    Record(weight: 62, datTime: DateTime.now() , note: 'Kasım'),

  ].obs;
   // obs yazmış olduğumuz  nesne listesinin arka planda yönetilmesini sağlar
   // bu ifade ne demek  ?
   // Yani listede meydana gelebilecek tüm değişiklikleri arka planda kendisi yapar
   // bu bize set state kullanmadan değişiklik yapma şansı vermiş oluyor

  // Yukardaki Listeye eleman ekleyen method
  void addRecord() {
    count++;
    records.add(Record(weight: 62, datTime: DateTime.now() , note: 'Son eklenen Satır ${count}'),);
    print(records.length);
  }

  // Listeden eleman silme fonksyonu
  void deleteRecord(Record obje) {
    records.remove(obje);
  }

}
