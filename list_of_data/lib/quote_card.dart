import 'package:flutter/material.dart';
import 'quote.dart';

//3. Yol
class QuoteCards extends StatelessWidget {

  final Quote quote;
  final Function()? delete;
  QuoteCards({required this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                )
            ),
            SizedBox(height: 3.0),
            Text(
                quote.author,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[900],
                )
            ),
            //SizedBox(height: 1.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete This Art'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
