import 'package:flutter/material.dart';

class GCoinC extends StatefulWidget {
  const GCoinC({super.key});

  @override
  State<GCoinC> createState() => _GCoinState();
}

class _GCoinState extends State<GCoinC> {
  TextEditingController coinController = TextEditingController();
  double gcoin = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GCoin to PHP Converter'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // This textfield is where you will input your coin
            TextField(
              controller: coinController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Coin',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  gcoin = double.parse(coinController.text) * 0.250;
                });
              },
              child: const Text("Convert"),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Php : $gcoin",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
