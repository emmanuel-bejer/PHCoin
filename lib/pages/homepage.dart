import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phcoin/pages/convert.dart';
import 'package:phcoin/pages/viewscreen.dart';
import 'package:phcoin/graph/graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePState();
}

class _HomePState extends State<HomePage> {
  int index = 0;
  late Color selectedItem = Colors.blue; // selected bottom navigation
  Color unselectedItem = Colors.grey; // unselected bottom navigation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.house_fill,
                  color: index == 0 ? selectedItem : unselectedItem,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.graph_circle_fill,
                  color: index == 1 ? selectedItem : unselectedItem,
                ),
                label: 'Page')
          ],
        ),
      ),
      // This Floating Button in the middle is the main function of the App 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const CurrencyConverter(),
            ),
          );
        },
        child: const Icon(
          CupertinoIcons.bitcoin_circle,
          color: Colors.white,
        ),
      ),
      body: index == 0 ? const ViewScreen() : const GraphScreen(),
    );
  }
}
