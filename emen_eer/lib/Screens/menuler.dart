import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:group_list_view/group_list_view.dart';
import '../Tema-Stiller-Listeler/thema_data.dart';

class Menuler extends StatefulWidget {
  Map<String, dynamic> mNameAndPriceOfFoodClass;
  Menuler(this.mNameAndPriceOfFoodClass);

  @override
  _MenulerState createState() => _MenulerState();
}

class _MenulerState extends State<Menuler> {
  Map<String, dynamic> mNameAndPriceOfFood = {};


  @override
  void initState() {
    mNameAndPriceOfFood = widget.mNameAndPriceOfFoodClass;
  }

  @override
  Widget build(BuildContext context) {
    return GroupListView(
      sectionsCount: mNameAndPriceOfFood.keys.toList().length,
      countOfItemInSection: (int section) {
        return mNameAndPriceOfFood.values.toList()[section].length;
      },
      itemBuilder: (BuildContext context, IndexPath index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mNameAndPriceOfFood.values.toList()[index.section][index.index]['label'].toString(),
                style: Menu2,
              ),
              Row(
                children: [
                  Text(
                    mNameAndPriceOfFood.values.toList()[index.section][index.index]['price'].toString(),
                    style: Menu2,
                  ),
                  Icon(FontAwesome.turkish_lira, size: 14, color: blackColor1),
                ],
              ),
            ],
          ),
        );
      },
      groupHeaderBuilder: (BuildContext context, int section) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 9),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.deepPurple),
              ),
            ),
            child: Text(
              mNameAndPriceOfFood.keys.toList()[section],
              style: Menu1,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 9),
      sectionSeparatorBuilder: (context, section) => SizedBox(height: 10),
    );
  }
}
