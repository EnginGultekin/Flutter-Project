import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:bootstrap_bs_flutter/veri_cek.dart';
import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class Datatables extends StatefulWidget {
  @override
  _DatatablesState createState() => _DatatablesState();
}

class _DatatablesState extends State<Datatables> {

  /// En alttaki sınıftan oluşturulaan
  final ExampleSource _source1 = ExampleSource(data: [
    {'typeid': 0,'username': 'username Deneme','name':'Deniz', 'id': 000, 'imageLink': 'www.google.pictures.com'},
    {'typeid': 1,'username': 'username Deneme','name':'Deniz', 'id': 001, 'imageLink': 'www.google.pictures.com'},
    {'typeid': 2,'username': 'username Deneme','name':'Deniz', 'id': 002, 'imageLink': 'www.google.pictures.com'},
    {'typeid': 3,'username': 'username Deneme','name':'Deniz', 'id': 003, 'imageLink': 'www.google.pictures.com'},
    {'typeid': 4,'username': 'username Deneme','name':'Deniz', 'id': 004, 'imageLink': 'www.google.pictures.com'},

  ]);
   ExampleSource _source = ExampleSource();


  Future<List<Map<String, dynamic>>?> getUserList() async {
    List<Map<String, dynamic>> source = [];
    Uri uri = Uri.parse("http://dobiapps.tk:8008/api/v1/users");
    var response = await http.post(uri);
    if(response.statusCode == 200){
      for(int i=0; i<(json.decode(response.body)).length; i++){
        source.add((json.decode(response.body))[i]);
      }
      print((json.decode(response.body)));
      setState(() {
        _source = ExampleSource(data: source);
      });
      return source;
    } else{
      print('ERROR');
    }

  }

  //final ExampleSource _source = ExampleSource(data: ExampleSource.getUserList());

  @override
  void initState() {
    _source.controller = BsDatatableController();
    super.initState();
  }

  // Future loadApi(Map<String, dynamic> params) {
  //   print('çalışşın');
  //   return http
  //       .post(
  //     Uri.parse('https://www.boredapi.com/api/activity?key=3699502'),
  //     body: params,
  //   )
  //       .then((value) {
  //     Map<String, dynamic> json = jsonDecode(value.body);
  //     setState(() {
  //       _source.response = BsDatatableResponse.createFromJson(json);
  //       _source.onEditListener = (typeid, index) {
  //         _source.controller.reload();
  //       };
  //       _source.onEditListener = (typeid, index) {
  //         final data = _source.get(index);
  //         data['name'] = 'Edited';
  //
  //         _source.put(index, data);
  //       };
  //       _source.onDeleteListener = (typeid, index) {
  //         _source.removeAt(index);
  //       };
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: BsCard(
          margin: EdgeInsets.all(30.0),
          children: [
            // BsCardContainer(title: Text('Datatables'), actions: [
            //   Container(
            //     margin: EdgeInsets.only(right: 5.0),
            //     child: TextButton(
            //       onPressed: () {
            //         _source.insert(0, {
            //           'typecd': 'TP1',
            //           'typenm': 'Type ${_source.response.data.length}'
            //         });
            //       },
            //       child: Text('Insert'),
            //     ),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       _source.add({
            //         'typecd': 'TP1',
            //         'typenm': 'Type ${_source.response.data.length}'
            //       });
            //     },
            //     child: const Text('Add'),
            //   )
            // ]),
            // BsCardContainer(
            //   actions: [
            //     Container(
            //       margin: EdgeInsets.only(right: 5.0),
            //       child: TextButton(
            //         onPressed: () {
            //           _source.insert(0, {
            //             'typecd': 'Yeni Kullanıcı İnsert',
            //             'typenm':
            //                 'Kullanıcı _adı_${_source1.response.data.length}'
            //           });
            //         },
            //         child: Text('Insert'),
            //       ),
            //     ),
            //     TextButton(
            //       onPressed: () {
            //         _source.add({
            //           'typecd': 'Yeni_Kul.Add',
            //           'typenm': 'Kullanıcı_Adı ${_source1.response.data.length}'
            //         });
            //       },
            //       child: Text('Add'),
            //     )
            //   ],
            //   child: BsDatatable(
            //     notFoundText: Center(child: Text('Not Found Text')),
            //     textInfo: Text('Text İnfoooo Burdaaa'),
            //     processingText: Text('Processing Text Nerdeymiş'),
            //     source: _source,
            //     title: const Text('Datatables Data'),
            //     columns: ExampleSource.columns,
            //     language: const BsDatatableLanguage(
            //       nextPagination: 'Sonraki',
            //       previousPagination: 'Önceki',
            //       information:
            //           'Show __START__ to __END__ of __FILTERED__ entries',
            //       informationFiltered: 'filtered from __DATA__ total entries',
            //       firstPagination: 'İlk Sayfa',
            //       lastPagination: 'Son Sayfa',
            //       hintTextSearch: 'Arama Yeriii',
            //       perPageLabel: 'PPageLabel',
            //       searchLabel: 'PSerLabel',
            //     ),
            //     //serverSide: loadApi,
            //   ),
            // ),
             BsCardContainer(
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 5.0),
                  child: TextButton(
                    onPressed: () {
                      _source.insert(0, {
                        'username': 'Username',
                        'name': 'Yeni Kullanıcı İsmi',
                        'id': _source.response.data.length,
                        'imageLink':
                            '---- www.google.pictures.com ----',
                      });
                    },
                    child: Text('Insert'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _source.add({
                      'username': 'Username',
                      'name': 'Yeni Kullanıcı İsmi',
                      'id': _source.response.data.length,
                      'imageLink':
                      '---- www.google.pictures.com ----',
                    });
                  },
                  child: Text('Add'),
                ),
                TextButton(
                  onPressed: () {
                     getUserList();
                  },
                  child: Text('Veri Dönder'),
                )
              ],
              child: BsDatatable(
                source: _source,
                //serverSide: VeriCek.getUserList(),
                title: Text('Datatables Verileri'),
                columns: ExampleSource.columns,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


