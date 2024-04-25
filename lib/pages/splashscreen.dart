import 'package:flutter/material.dart';
import 'package:phcoin/pages/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: heightApp,
          width: widthApp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/gif/coin.gif'),
              const Column(
                children: [
                  Text(
                    'PHCoin',
                    style: TextStyle(color: Colors.blue,fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 250,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthApp * 0.14),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: widthApp * 0.08,
                          vertical: heightApp * 0.014),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'GET STARTED ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          RotationTransition(
                              turns: AlwaysStoppedAnimation(320 / 360),
                              child: Icon(Icons.arrow_forward_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}
