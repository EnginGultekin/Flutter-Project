import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

import '../thema_data.dart';

class AddRecordView extends StatefulWidget {
  const AddRecordView({Key? key}) : super(key: key);

  @override
  State<AddRecordView> createState() => _AddRecordViewState();
}

class _AddRecordViewState extends State<AddRecordView> {
  int _selectedValue = 75;
  DateTime _selectedTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add New Record'),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: Colors.green,
                style: BorderStyle.solid,
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    FontAwesomeIcons.weight,
                    size: 30,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      NumberPicker(
                        itemCount: 3,
                        itemWidth: 80,
                        itemHeight: 50,
                        step: 1,
                        axis: Axis.horizontal,
                        minValue: 35,
                        maxValue: 220,
                        value: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.green),
                        ),
                      ),
                      Icon(FontAwesomeIcons.chevronUp,size: 16,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              var initialDate =DateTime.now();
              showDatePicker(context: context, initialDate: DateTime.now(), firstDate: initialDate.subtract(Duration(days:365) ), lastDate: initialDate.add(Duration(days:31)));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: Colors.green,
                  style: BorderStyle.solid,
                ),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      FontAwesomeIcons.calendar,
                      size: 30,
                    ),
                    Text(DateFormat('EEE,MMM d').format(_selectedTime),),
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: Colors.black26,
                style: BorderStyle.solid,
              ),
            ),
            child: Text('delil jrfgvhjdjgv jhgfj'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: Colors.green,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: Text(
              'Save Record',
              style: recordStyle,
            ),
          ),
        ],
      ),
    );
  }
}
