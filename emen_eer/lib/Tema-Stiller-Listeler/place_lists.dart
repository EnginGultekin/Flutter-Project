import 'package:turkish/turkish.dart';

import 'comment_list.dart';

class Place {
  double starRate;
  String name;
  String location;
  String type;
  String address;
  double openHour;
  double closeHour;
  String phoneNum;
  int order;
  String maps;
  Map<String, dynamic> mNameAndPriceOfFood;
  List<Comments> commentLists;

  Place({required this.starRate,
    required this.name,
    required this.location,
    required this.type,
    required this.address,
    required this.openHour,
    required this.closeHour,
    required this.phoneNum,
    required this.order,
    required this.maps,
    required this.mNameAndPriceOfFood,
    required this.commentLists});
}



class Liste {
  static List<Place> restaurantList = [
    Place(
        starRate: 5,
        name: 'Gölbaşı Verçenik Lokanta  Cafe',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Karşıyaka,Haymana Yolu Blv. No:144 D:B',
        openHour: 7.0,
        closeHour: 21.00,
        phoneNum: '03124853204',
        order: 1,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
          'Sıcak İçecekler2': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists : [
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 4,
        name: 'Beykoz Gölbaşı',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Karşıyaka,Haymana Yolu Blv. No:105',
        openHour: 8.3,
        closeHour: 00.00,
        phoneNum: '03124844446',
        order: 2,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'Çaglar Restaurant',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Karşıyaka,Haymana Yolu Blv. No:127',
        openHour: 9.0,
        closeHour: 21.00,
        phoneNum: '03124843191',
        order: 3,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 2,
        name: 'İdilya Restaurant',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Karşıyaka, No:140/C',
        openHour: 8.0,
        closeHour: 21.00,
        phoneNum: '03124850011',
        order: 4,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 1,
        name: 'Taşhan Cafe Restaurant',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Gaziosmanpaşa,Sahil Cd. No:20',
        openHour: 8.0,
        closeHour: 23.00,
        phoneNum: '05062825018',
        order: 5,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 4,
        name: 'Florya Restaurant',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Gaziosmanpaşa,Sahil Cd. No:24',
        openHour: 9.0,
        closeHour: 23.00,
        phoneNum: '03124856065',
        order: 6,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'İlhan Ustanın Yeri',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Gaziosmanpaşa,Sahil Cd. No:24',
        openHour: 9.0,
        closeHour: 23.00,
        phoneNum: '03124856065',
        order: 7,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'BD Ocakbaşı Restaurant',
        location: 'Gölbaşi/Ankara',
        type: 'Restoran',
        address: 'Gaziosmanpaşa,06830',
        openHour: 6.3,
        closeHour: 00.00,
        phoneNum: '03124856596',
        order: 8,
        maps: 'https://www.google.com.tr/maps',
         mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],
        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    // Place(
    //     starRate: 5,
    //     name: 'Arjantin',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Restoran/Cafe',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.30,
    //     phoneNum:
    //         'https://www.google.com/maps/place/Ankara+%C3%9Cniversitesi+G%C3%B6lba%C5%9F%C4%B1+Kamp%C3%BCs%C3%BC/@39.7801052,32.8194668,17z/data=!3m1!4b1!4m5!3m4!1s0x14d3422c2c3ef6c7:0x9073bfb5b203ac6f!8m2!3d39.7801011!4d32.8216555',
    // order: 2),
    // Place(
    //     starRate: 4.1,
    //     name: 'Çengel',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Restoran/Cafe',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.30,
    //     phoneNum: '05314810300',order: 1),
    // Place(
    //     starRate: 2.5,
    //     name: 'Aspava',
    //     location: 'Bahçelievler/Ankara',
    //     type: 'Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.30,
    //     phoneNum: '05314810300',order:3 ),
    // Place(
    //     starRate: 4,
    //     name: 'Şarkılı Bar',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.30,
    //     phoneNum: '05314810300',order:5 ),
    // Place(
    //     starRate: 3.5,
    //     name: 'Hot Döner',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.30,
    //     phoneNum: '05314810300',order: 8),
    // Place(
    //     starRate: 2.5,
    //     name: 'Adana Kebap',
    //     location: 'Kızılay/Ankara',
    //     type: 'Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.30,
    //     phoneNum: '05314810300',order:6 ),
    // Place(
    //     starRate: 5,
    //     name: 'Bakılçı Ahmet Usta',
    //     location: 'Balgat/Ankara',
    //     type: 'Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.30,
    //     phoneNum: '05314810300',order:7 ),
    // Place(
    //     starRate: 1.5,
    //     name: 'Zenginlerin Yeri',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 22.00,
    //     closeHour: 4.30,
    //     phoneNum: '05314810300',order: 9),
  ];

  static List<Place> cafeList = [
    Place(
        starRate: 3,
        name: 'Mogan Aile Çay Bahçesi',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address: 'Gazi Osman Paşa Mahallesi, Sahil Park, Gölbaşı, Ankara',
        openHour: 8.00,
        closeHour: 20.00,
        phoneNum: '05072898614',
        order: 1,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'İnn Jack Cafe Bar',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address: 'Kızılcaşar Mahallesi, İncek Bulvarı, Gölbaşı, Ankara',
        openHour: 10.30,
        closeHour: 23.00,
        phoneNum: '03124601004',
        order: 2,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 4,
        name: 'Lox Cafe',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address: 'İncek Mahallesi, İncek Bulvarı, No 311/E, Gölbaşı, Ankara',
        openHour: 9.00,
        closeHour: 22.30,
        phoneNum: '03124851919',
        order: 3,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'Hanedan Dürüm Evi',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address:
        'Segmenler Mahallesi, Cemal Gürsel Caddesi, No 29/A-B, Gölbaşı, Ankara',
        openHour: 10.30,
        closeHour: 23.00,
        phoneNum: '03124841881',
        order: 4,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'Keyf-i Serender',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address: 'İncek Mahallesi, İncek Bulvarı, No 317, Gölbaşı, Ankara',
        openHour: 9.00,
        closeHour: 00.00,
        phoneNum: '03124602004',
        order: 5,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'Aydınlık Park Cafe',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address: 'Bahçelievler Mahallesi, 285. Sokak, No 9, Gölbaşı, Ankara',
        openHour: 10.00,
        closeHour: 21.00,
        phoneNum: '03124851505',
        order: 6,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 4,
        name: 'İncekeyf',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address: 'İncek Mahallesi, İncek Bulvarı, No 39, Gölbaşı, Ankara',
        openHour: 8.00,
        closeHour: 23.00,
        phoneNum: '03124601500',
        order: 7,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'Bions Cafe & Bistro',
        location: 'Gölbaşi/Ankara',
        type: 'Kafe',
        address: 'Kızılcasar Mahallesi, Barış Caddesi, No 29, Gölbaşı, Ankara',
        openHour: 8.00,
        closeHour: 22.00,
        phoneNum: '05546084929',
        order: 8,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ])

    // Place(
    //     starRate: 5,
    //     name: 'Empati',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Kafe/Eglence',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order: 8),
    // Place(
    //     starRate: 4.1,
    //     name: 'Hayat Kahvesi',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Kafe',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:9 ),
    // Place(
    //     starRate: 2.5,
    //     name: 'İçki Bar',
    //     location: 'Bahçelievler/Ankara',
    //     type: 'Kafe/Eğlence',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:6 ),
    // Place(
    //     starRate: 4,
    //     name: 'Manzara Kafe',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Kafe',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:5 ),
    // Place(
    //     starRate: 3.5,
    //     name: 'Mogan Gül',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Cafe/Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:4 ),
    // Place(
    //     starRate: 2.5,
    //     name: 'Gölbaşı Sosyal Tesisleri',
    //     location: 'Kızılay/Ankara',
    //     type: 'Cafe/Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:1 ),
    // Place(
    //     starRate: 5,
    //     name: 'Surnali Delice',
    //     location: 'Balgat/Ankara',
    //     type: 'Cafe/Restoran',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:2 ),
    // Place(
    //     starRate: 1.5,
    //     name: 'Zenginlerin Yeri',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Kafe',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order: 3),
  ];

  static List<Place> hairdressertList = [
    Place(
        starRate: 5,
        name: 'Alis Kuaför & Güzellik Salonu',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Karşıyaka,İnönü CD. 28/A',
        openHour: 8.00,
        closeHour: 19.00,
        phoneNum: '03124842266',
        order: 1,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'Kuaför Uğur Polat',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Bahçelievler,285.sk no:35',
        openHour: 8.00,
        closeHour: 19.00,
        phoneNum: '05348320010',
        order: 2,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 2,
        name: 'Elizi Bayan Kuaför',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Bahçelievler,281. Sokak cadde no:43/A',
        openHour: 8.30,
        closeHour: 20.00,
        phoneNum: '05348320010',
        order: 3,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'Roza Kuaför',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Bahçelievler,284.Sk 14/B',
        openHour: 8.00,
        closeHour: 20.00,
        phoneNum: '03124850321',
        order: 4,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 4,
        name: 'Namalan Erkek Kuaförü',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Oguz Kagan Usta Cd 17/D',
        openHour: 8.00,
        closeHour: 20.00,
        phoneNum: '05397975374',
        order: 5,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'Nevzat Erkek Kuaförü',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Segmenler,Oguz Kagan Usta Cd 61/A',
        openHour: 9.00,
        closeHour: 22.00,
        phoneNum: '05549396362',
        order: 6,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'Hasan Erkek Kuaförü',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Şafak,Ankara Cd. No : 45 D:C',
        openHour: 9.30,
        closeHour: 20.00,
        phoneNum: '05549396362',
        order: 7,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'HC Erkek Kuaförü',
        location: 'Gölbaşi/Ankara',
        type: 'Kuaför',
        address: 'Bahçelievler,274.Sk. 11/A',
        openHour: 9.30,
        closeHour: 20.00,
        phoneNum: '05327110074',
        order: 8,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ])
    // Place(
    //     starRate: 5,
    //     name: 'Memoş Erkek Kuaförü',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Erkek Berberi',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:2 ),
    // Place(
    //     starRate: 4.1,
    //     name: 'Tosyalılar',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Erkek Berberi',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:3 ),
    // Place(
    //     starRate: 2.5,
    //     name: 'Betül Kadın Kuaförü',
    //     location: 'Bahçelievler/Ankara',
    //     type: 'Kadın Kuaförü',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:6 ),
    // Place(
    //     starRate: 4,
    //     name: 'Dedenin Yeri',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Erkek Berberi',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:4 ),
    // Place(
    //     starRate: 3.5,
    //     name: 'Melisa Güzellik Merkezi',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Kadın Kuaförü',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:5 ),
    // Place(
    //     starRate: 2.5,
    //     name: 'Deniz Kuaför',
    //     location: 'Kızılay/Ankara',
    //     type: 'Kadın Kuaförü',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:8 ),
    // Place(
    //     starRate: 5,
    //     name: 'Mogan Erkek Berberi',
    //     location: 'Balgat/Ankara',
    //     type: 'Erkek Berberi',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order: 7),
    // Place(
    //     starRate: 1.5,
    //     name: 'Zenginlerin Yeri',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Erkek Berberi',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:9 ),
  ];

  static List<Place> enjoyList = [
    Place(
        starRate: 4,
        name: 'Bircan İnternet Kafe',
        location: 'Gölbaşi/Ankara',
        type: 'Eglence',
        address: 'Şafak Mah. 885. Sok. 38/A Gölbaşı, Ankara',
        openHour: 8.00,
        closeHour: 23.00,
        phoneNum: '03124857570',
        order: 1,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 4,
        name: 'Goal Kafe ve Playstatıon Kafe',
        location: 'Gölbaşi/Ankara',
        type: 'Eglence',
        address: 'Bahçelievler Mah. 3. Cad. 113/A Gölbaşı, Ankara',
        openHour: 9.00,
        closeHour: 21.00,
        phoneNum: '05369263065',
        order: 2,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'Mavi Ay İnternet Kafe',
        location: 'Gölbaşi/Ankara',
        type: 'Eglence',
        address: 'Gaziosmanpaşa Mah. 376 Sok. 114/7 Gölbaşı, Ankara',
        openHour: 8.00,
        closeHour: 22.00,
        phoneNum: '03124841465',
        order: 3,
        maps: 'https://www.google.com.tr/maps',mNameAndPriceOfFood :{
      'Sıcak İçecekler': [
        {'label': 'Çay', 'price': 5},
        {'label': 'Çay', 'price': 5},
        {'label':'demlik', 'price': 55},
        {'label': 'kahve', 'price': 5}
      ],

    },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 5,
        name: 'Tako Playstatıon Kafe',
        location: 'Gölbaşi/Ankara',
        type: 'Eglence',
        address: 'Segmenler Mah. Karanfil Cad. 70/A Gölbaşı, Ankara',
        openHour: 8.00,
        closeHour: 22.00,
        phoneNum: '05314719260',
        order: 4,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 3,
        name: 'Canberk Bilgisayar',
        location: 'Gölbaşi/Ankara',
        type: 'Eglence',
        address: 'Hükümet Cad. 10 Gölbaşı, Ankara',
        openHour: 10.00,
        closeHour: 20.00,
        phoneNum: '03124849825',
        order: 5,
        maps: 'https://www.google.com.tr/maps',
        mNameAndPriceOfFood: {
          'Sıcak İçecekler': [
            {'label': 'Çay', 'price': 5},
            {'label': 'Çay', 'price': 5},
            {'label': 'demlik', 'price': 55},
            {'label': 'kahve', 'price': 5}
          ],

        },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),
    Place(
        starRate: 4,
        name: 'For-My İnternet Kafe',
        location: 'Gölbaşi/Ankara',
        type: 'Eglence',
        address: 'Segmenler Mah. Cumhuriyet Cad. 70 Gölbaşı, Ankara',
        openHour: 9.00,
        closeHour: 21.00,
        phoneNum: '03124853504',
        order: 6,
        maps: 'https://www.google.com.tr/maps',mNameAndPriceOfFood :{
      'Sıcak İçecekler': [
        {'label': 'Çay', 'price': 5},
        {'label': 'Çay', 'price': 5},
        {'label':'demlik', 'price': 55},
        {'label': 'kahve', 'price': 5}
      ],

    },commentLists :  [
      Comments(
          'Engin',
          'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
              'tavsiye ediyorum kesinlikler gitt',
          4.5,'01.12.2021'),
      Comments(
          'Deliler',
          ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
              'enmedik isteseydik orda yerdik dimi ama  ',
          3.0,'01.04.2022'),
      Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
    ]),

    // Place(
    //     starRate: 5,
    //     name: 'Adranalin Salonu',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Eglence/Korku',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:9 ),
    // Place(
    //     starRate: 4.1,
    //     name: 'Haycan Çeşmesi',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Eglence/Heycan',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:8 ),
    // Place(
    //     starRate: 2.5,
    //     name: 'Okey Salonu',
    //     location: 'Bahçelievler/Ankara',
    //     type: 'Eglence/101',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:6 ),
    // Place(
    //     starRate: 4,
    //     name: 'Playstions Salonu',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Eglence/Pes',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order: 7),
    // Place(
    //     starRate: 3.5,
    //     name: 'Hayri Oyun Yeri',
    //     location: 'Gölbaşi/Ankara',
    //     type: 'Eglence/Pes',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:1 ),
    // Place(
    //     starRate: 2.5,
    //     name: 'Çengeller',
    //     location: 'Kızılay/Ankara',
    //     type: 'Eglence/101',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order: 2),
    // Place(
    //     starRate: 5,
    //     name: 'Hamitin Yeri',
    //     location: 'Balgat/Ankara',
    //     type: 'Eglence/Bilardo',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order:4 ),
    // Place(
    //     starRate: 1.5,
    //     name: 'Zenginlerin Yeri',
    //     location: 'Çukurambar/Ankara',
    //     type: 'Eglence',
    //     address: 'BahçeliEvler Mah. Denizli Cd. 321.Sk No:52',
    //     openHour: 8.00,
    //     closeHour: 21.00,
    //     phoneNum: '05314810300',order: 3),
  ];
}

void funcSiralaPuan(List<Place> rateList) {
  rateList.sort((place1, place2) => place2.starRate.compareTo(place1.starRate));
  for (var list in rateList) {
    print(list.starRate);
  }
}

void funcSiralaName(List<Place> nameList) {
  nameList.sort((place1, place2) => place1.name.compareToTr(place2.name));
  for (var list in nameList) {
    print(list.name);
  }
}

void funcSiralaKonum(List<Place> arr) {
  arr.sort((place1, place2) => place1.order.compareTo(place2.order));
  for (var list in arr) {
    print(list.order);
  }
}
