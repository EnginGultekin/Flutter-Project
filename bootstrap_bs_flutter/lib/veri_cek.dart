import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExampleSource extends BsDatatableSource {
  ExampleSource({
    List<Map<String, dynamic>> data = const [],
  }) : super(data: data);

  Function(dynamic, int) onEditListener = (value, index) {};
  Function(dynamic, int) onDeleteListener = (value, index) {};


  static List<BsDataColumn> get columns => <BsDataColumn>[
    BsDataColumn(
      label: Text('Sıra'),
      orderable: false,
      searchable: false,
      width: 100.0,
    ),
    BsDataColumn(
      label: Text('Username'),
      columnName: 'username',
      width: 200.0,
    ),
    BsDataColumn(
      label: Text('İsim'),
      columnName: 'name',
      width: 200.0,
    ),
    BsDataColumn(
      label: Text('ID'),
      columnName: 'id',
      width: 200.0,
    ),
    BsDataColumn(
      label: Text('imageLink'),
      columnName: 'image',
      width: 300.0,
    ),
    BsDataColumn(
        label: Text('Ters Çevir'),
        orderable: true,
        searchable: true,
        width: 200.0),
  ];

  static Future<List<Map<String, dynamic>>?> getUserList() async {
    List<Map<String, dynamic>> source = [];

    Uri uri = Uri.parse("http://dobiapps.tk:8008/api/v1/users");
    var response = await http.post(uri);

    if(response.statusCode == 200){
      for(int i=0; i<(json.decode(response.body)).length; i++){
        source.add((json.decode(response.body))[i]);
      }
      print((json.decode(response.body)));
      return source;
    } else{
      print('ERROR');
    }

  }

  @override
  BsDataRow getRow(int index) {
    return BsDataRow(index: index, cells: <BsDataCell>[
      BsDataCell(Text('${controller.start + index + 1111}')),
      BsDataCell(Text('${response.data[index]['username']}')),
      BsDataCell(Text('${response.data[index]['name']}')),
      BsDataCell(Text('${response.data[index]['id']}')),
      BsDataCell(Text('${response.data[index]['imageLink']}')),
      BsDataCell(Row(
        children: [
          BsButton(
            margin: EdgeInsets.only(right: 5.0),
            onPressed: () => onEditListener(response.data[index]['id'], index),
            prefixIcon: Icons.edit,
            size: BsButtonSize.btnIconSm,
            style: BsButtonStyle.primary,
          ),
          BsButton(
            onPressed: () =>
                onDeleteListener(response.data[index]['id'], index),
            prefixIcon: Icons.delete,
            size: BsButtonSize.btnIconSm,
            style: BsButtonStyle.danger,
          )
        ],
      ))
    ]);
  }
}