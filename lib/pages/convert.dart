import 'package:flutter/material.dart';
import 'package:phcoin/pages/bcoin.dart';
import 'package:phcoin/pages/dcoin.dart';
import 'package:phcoin/pages/gcoin.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Virtual Currency Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Elevated Button for GCoin to PHP
            ElevatedButton(
              onPressed: () {
                //onPressed Button will redirect to GCoin Converter View
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GCoinC()));
              },
              child: const Text('GCoin to PHP'),
            ),
            const SizedBox(
              height: 30,
            ),
            // Another Elevated Button for BCoin to PHP
            ElevatedButton(
              onPressed: () {
                //onPressed Button will redirect to BCoin Converter View
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const BCoinC()));
              },
              child: const Text(
                'BCoin to PHP',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Another Elevated Button for DCoin to PHP
            ElevatedButton(
              onPressed: () {
                //onPressed Button will redirect to DCoin Converter View
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DCoinC()));
              },
              child: const Text(
                'DCoin to PHP',
              ),
            )
          ],
        ),
      ),
    );
  }
}
