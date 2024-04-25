import 'package:flutter/material.dart';

class DCoinC extends StatefulWidget {
  const DCoinC({super.key});

  @override
  State<DCoinC> createState() => _DCoinState();
}

class _DCoinState extends State<DCoinC> {
  TextEditingController coinController = TextEditingController();
  double dcoin = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DCoin to PHP Converter'),
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
                  dcoin = double.parse(coinController.text) * .200;
                });
              },
              child: const Text("Convert"),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Php : $dcoin",
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