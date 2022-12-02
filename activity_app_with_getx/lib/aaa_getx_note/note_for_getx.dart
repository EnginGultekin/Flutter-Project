import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


// Getx projesinde yaptıklarımız , kullandığımız özellikler


 // --> MaterialApp yerine GetMaterialApp kullanmalıyızü

 /// 1.Easy navigation
 //Get.to(Home());   --  Get.back(Home());   diyerekte geri pop işlemi yapabiliriz

 /// 2.Snackbars/dialogs/bottomsheets with no context
 // Get.snackbar('Hi','Message');
 // Get.defaultDialog(title: "I am a dialog");


 /// 3.Easiest state manager
 //var count = 0.obs;
 //Obx( () => Text(count.String));

/* Ne değişecekse onu Obx() ile sarmalamamız yeterlidir ancak sarmaladığımız şey  yukardaki gibi  '.obs' uzantısı almış olması gerekmektedir
   Burda 'obs' dediği arka planda değişkeni yönetmesi anlamına geliyormuş  değişikliklerin otomatik değişmesini sağlar
   Text() will be updated when count changes. Burda değişimi sağlayan  'Obx' tir
 */


 /// 4. Access data from one instance in another screen easily.
 //  Get.put(Controller())    Controller burda bir sınıf yanlış anlaşılmasın
 // Controller _controller = Get.put(Controller());  bu şekilde tanımlanacaktır

 //  Controller cont = Get.find();     bir yerde  bir kez  Get.put() kullanıldığı zaman bidaha kullanmak yerine  bu satırı kullanırız
 //  Controller ctrl = Get.find();   bu şekilde tanımlanacaktır

 /// 5.Shared Preferences özelliği sağlıyor ve cihaz hafızasında depolama yapıyor

 /// 6.  GetBuilder<Controller_Sınıfı_İsmi>  Aslında alttaki satırda Obx() gibi aynı işlemi yapıyor tek farkı
 //    GetBuilder<HomeController>(
 //                 builder: (_) => Column(...),
 //                 ),
 ///  Kullanılması gereken  gereken yerde kullanılmalı   'update();'   tek fark işte budur


 /// 7.
 /// 8.



//  Getx bize iki tane state management yöntemi verir

   /// 1. Uygulamanın statetini oluşturan değişkenleri tutan bir class oluşturun bu class 'GetxController' dan extend etsin
   /// 2.View ekranı olmalı asıl görüntünün tutulduğu ekran



