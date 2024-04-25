import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// These are the dummy data that are displayed in the Transaction History of the homepage
List<Map<String, dynamic>> allData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.coins, color: Colors.white),
    'color': Colors.yellow[700],
    'name': 'GCoin',
    'totalAmount': '+₱50.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bitcoin, color: Colors.white),
    'color': Colors.purple,
    'name': 'BCoin',
    'totalAmount': '+₱60.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.cookie, color: Colors.white),
    'color': Colors.green,
    'name': 'DCoin',
    'totalAmount': '+₱18.00',
    'date': 'Yesterday',
  },

  {
    'icon': const FaIcon(FontAwesomeIcons.coins, color: Colors.white),
    'color': Colors.yellow[700],
    'name': 'GCoin',
    'totalAmount': '-₱50.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bitcoin, color: Colors.white),
    'color': Colors.purple,
    'name': 'BCoin',
    'totalAmount': '-₱30.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.cookie, color: Colors.white),
    'color': Colors.green,
    'name': 'DCoin',
    'totalAmount': '-₱10.00',
    'date': 'Yesterday',
  },
];