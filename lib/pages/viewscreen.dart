import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phcoin/apidata/historydata.dart';
import 'package:phcoin/pages/notifications.dart';
import 'package:phcoin/pages/profile.dart';
import 'package:phcoin/pages/viewall.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ProfileInfo(),
                            ),
                          );
                        },
                        icon: const Icon(
                          CupertinoIcons.person,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome!",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "SkyRocketeer",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const NotificationPage(),
                    ),
                  );
                },
                icon: const Icon(CupertinoIcons.bell))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ],
                transform: const GradientRotation(pi / 4),
              ),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey.shade400,
                    offset: const Offset(5, 5))
              ]),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("BALANCE AVAILABLE",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "₱ 128.00",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 28,
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white30, shape: BoxShape.circle),
                          child: const Center(
                              child: Icon(
                            CupertinoIcons.arrow_up,
                            size: 18,
                            color: Colors.greenAccent,
                          )),
                        ),
                        const SizedBox(width: 8),
                        const Column(
                          children: [
                            Text("PROFIT",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text("₱ 38.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 28,
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white30, shape: BoxShape.circle),
                          child: const Center(
                              child: Icon(
                            CupertinoIcons.arrow_down,
                            size: 18,
                            color: Colors.red,
                          )),
                        ),
                        const SizedBox(width: 8),
                        const Column(
                          children: [
                            Text("INVESTED",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text("₱ 90.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    )
                  ],
                ))
          ]),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Transaction History",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ViewAllPage()),
              ),
              child: const Text(
                "View All",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: allData.length,
                itemBuilder: (context, int i) {
                  return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: allData[i]['color'],
                                                shape: BoxShape.circle),
                                          ),
                                          allData[i]['icon']
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        allData[i]['name'],
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        allData[i]['totalAmount'],
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        allData[i]['date'],
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ]),
                          )));
                })),
      ]),
    ));
  }
}
