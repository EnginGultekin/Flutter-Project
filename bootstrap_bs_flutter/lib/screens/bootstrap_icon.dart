import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class BootstrapIcon extends StatelessWidget {
  const BootstrapIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(BootstrapIcons.alarm,
            semanticLabel: 'Deneme',size: 100.0,color: Colors.red,),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(BootstrapIcons.info,semanticLabel: 'İnfo',size: 100.0,color: Colors.blue,),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(BootstrapIcons.files,semanticLabel: 'file',size: 100.0,color: Colors.amber,),
          ),

          Text('-Bu Sayfa Başka Bir pakett ile yazılmıştır'),
        ],
      ),
    );
  }
}
