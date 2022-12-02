import 'dart:html';

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class ExampleAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(100.0),
      margin:const  EdgeInsets.only(bottom: 20.0),
      child: BsCard(
        children: [
          const BsCardContainer(title: Text('Alert')),
          BsCardContainer(child: BsRow(
            alignment: Alignment.center,
            gutter: const EdgeInsets.only(left: 10.0, right: 10.0),
            children: [
               BsCol(
                margin: const EdgeInsets.only(bottom: 10.0),
                sizes: const ColScreen(md: Col.col_4),
                child: BsAlert(


                  heading: Row(
                    children:const  [
                      Icon(Icons.star),
                      SizedBox(width: 12,),
                      Text('Heading Kısmı'),
                    ],
                  ),
                  headingTextStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.red,
                  ),
                  //visibility: BsVisibility.none,
                  closeButton: true,
                  margin:const  EdgeInsets.only(bottom: 10.0),
                  child:const Text('Alert Primary Default'),
                ),
              ),
              const BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.secondary,
                  child: Text('Alert Secondary'),
                ),
              ),
              const BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.success,
                  child: Text('Alert Success'),
                ),
              ),
              const BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.danger,
                  child: Text('Alert Danger'),
                ),
              ),
              const BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.warning,
                  child: Text('Alert Warning'),
                ),
              ),
              const BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.info,
                  child: Text('Alert Info'),
                ),
              ),
              const BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.light,
                  child: Text('Alert Light'),
                ),
              ),
              const BsCol(
                margin: EdgeInsets.only(top: 100.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.dark,
                  child: Text('Alert Dark'),
                ),
              ),
               BsCol(
                margin: const EdgeInsets.only(top: 100.0,left: 100, right: 100),
                sizes: ColScreen.all(Col.col_8),
                child: BsAlert(
                  closeButton: true,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.success,
                  heading:const  Text('Hello World'),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                       Text('Alert Dark'),
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}