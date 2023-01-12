import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  //const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    //Quote('Başarı, başarısızlıktan başarısızlığa, coşku kaybı olmadan yürümektir', 'Willy Edgar Smith'),
    Quote('Çirkinlikte güzelliği görünüşle değil akılla ayırt edersin.', 'Edgar Alan Poe'),
    Quote('Üç şeyini bozma; Karakterini, kalbini, vicdanını...',  'EngLeng-Li'),
    Quote('Her şeyi yapabilirsin! Sadece kalk ve yap!', 'Joe Smith'),
    Quote('Kendin, kendin gibi olduğun sürece, kendin kalabilirsin', 'EngLeng-Chun')
  ];
/* 1.Yol
  Widget quoteTemplate(quote){
    return QuoteCards(quote: quote);
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
            'Awesome Qutes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[200],
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCards(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }

        )).toList(),
      ),
    );
  }
}

/* 2.Yol
class QuoteCards extends StatelessWidget {

  final Quote quote;
  QuoteCards({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[800],
              )
            ),
            SizedBox(height: 6.0),
            Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[900],
                )
            ),
         ],
        ),
      ),
    );
  }
}
*/
