import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text: 'Dont let the Japanese win', author: 'Kevin'),
    Quote(text: 'Happiness is the highest good', author: 'Samson'),
    Quote(text: 'Count on your fingers', author: 'Samwel')
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote:quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Awesome Quotes"),
        backgroundColor: Colors.green[300],
        elevation: 0.0,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(quote:quote))
            .toList(),
      ),
    );
  }
}


