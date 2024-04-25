import 'package:flutter/material.dart';

class BCoinC extends StatefulWidget {
  const BCoinC({super.key});

  @override
  State<BCoinC> createState() => _BCoinState();
}

class _BCoinState extends State<BCoinC> {
  TextEditingController coinController = TextEditingController();
  double bcoin = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BCoin to PHP Converter'),
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
                  bcoin = double.parse(coinController.text) * 0.181;
                });
              },
              child: const Text("Convert"),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "PHP : $bcoin",
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