import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/destination_carousel.dart';
import '../widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList(),
            ),
            const SizedBox(height: 20.0),
            const DestinationCarousel(),
            const SizedBox(height: 20.0),
            const HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30.0),
            label: '', // Flutter 2.0+ format
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pizza, size: 30.0),
            label: '', // Flutter 2.0+ format
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://i.imgur.com/Gw5wXu1.jpeg'),
            ),
            label: '', // Flutter 2.0+ format
          ),
        ],
      ),
    );
  }
}
