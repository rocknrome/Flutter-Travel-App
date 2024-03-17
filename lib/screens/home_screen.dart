import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key); // Corrected for null safety

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: index == 0
            ? Theme.of(context).colorScheme.secondary
            : const Color(0xFFE7EBEE), // Corrected color access
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Icon(
        _icons[index],
        size: 25.0,
        color: index == 0
            ? Theme.of(context).primaryColor
            : const Color(0xFFB4C1C4), // Fixed syntax
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          // Removed const
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0, top: 25.0),
            child: Text(
              // It's okay to have const here since the content is static
              'What would you like to find?',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20.0),
          _buildIcon(0), // Fixed method call
        ],
      ),
    ));
  }
}
