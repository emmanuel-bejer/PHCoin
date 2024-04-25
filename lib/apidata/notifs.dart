import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// These are the dummy data that are displayed in the Notifcations Page
List<Map<String, dynamic>> notifData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.coins, color: Colors.white),
    'color': Colors.yellow[700],
    'name': 'GCoin',
    'description': 'DCoin increased 10%',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bitcoin, color: Colors.white),
    'color': Colors.purple,
    'name': 'BCoin',
    'description': 'DCoin increased 5%',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.cookie, color: Colors.white),
    'color': Colors.green,
    'name': 'DCoin',
    'description': 'DCoin increased 8%',
    'date': 'Yesterday',
  },
];