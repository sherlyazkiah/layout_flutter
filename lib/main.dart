import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // Question 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // left position
              children: [
                // Question 2 
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Eiffel Tower',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Paris, France',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Question 3
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Button Section
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Text Section
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'The Eiffel Tower is one of the most iconic landmarks in the world, '
        'located in the heart of Paris, France. Standing at 330 meters tall, '
        'it was originally built as the entrance arch for the 1889 World’s Fair. '
        'Today, the tower attracts millions of visitors each year who come to '
        'enjoy its breathtaking views of Paris, romantic atmosphere, and dazzling night lights. '
        'Whether admired from below or from its observation decks, the Eiffel Tower remains '
        'a timeless symbol of love, art, and architectural brilliance.'
        '\n\nCreated by: Sherly Lutfi Azkiah Sulistyawati 2341720241',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Sherly Lutfi Azkiah Sulistyawati 2341720241',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'img/eiffel.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
           ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
