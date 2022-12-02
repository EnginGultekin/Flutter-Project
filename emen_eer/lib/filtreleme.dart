import 'package:flutter/material.dart';


class Place {

  int starRate;
  int konum; // Burasına biz sayısal değer verip uzaklığı ona göre sıralıyacagız
  String name;

  Place(this.starRate, this.konum, this.name);

}

List<Place> objes = [

  Place(4, 1, 'Adana'),
  Place(3, 7, 'Ankara'),
  Place(2, 8, 'Denizli'),
  Place(3, 9, 'Mugla'),
  Place(4, 10, 'Hakkari'),
  Place(5, 2, 'Bursa'),
  Place(3, 3, 'Aydın'),
  Place(2, 4, 'Hatay'),
  Place(1, 5, 'İzmir'),
  Place(4, 6, 'İstanbul'),
  Place(5, 11, 'Gol'),
  Place(5, 12, 'Gol'),
];


void funcSiralaPuan(List<Place> arr){
  arr.sort((place1,place2)=> place1.starRate.compareTo(place2.starRate));
  for(var list in arr){
    print(list.starRate);
  }
}

void funcSiralaName(List<Place> arr){
  arr.sort((place1,place2)=> place1.name.compareTo(place2.name));
  for(var list in arr){
    print(list.name);
  }

}

void funcSiralaKonum(List<Place> arr){
  arr.sort((place1,place2)=> place1.konum.compareTo(place2.konum));
  for(var list in arr){
    print(list.konum );
  }

}
