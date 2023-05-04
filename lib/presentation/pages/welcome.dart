// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFADD8E6),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF0000),
                    borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(50),
                        bottomStart: Radius.circular(50)),
                  ),
                  height: screenHeight * 0.4,
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: -45,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFD9D9D9),
                    radius: 45,
                    child: Icon(
                      Icons.library_books_sharp,
                      size: 50,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: screenHeight * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Monitoria',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Conectando você ao melhor da universidade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Colors.red,
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 20, bottom: 18, left: 18, top: 18),
                            child: Stack(
                              alignment: Alignment.center,
                              children: const [
                                Text('Começar'),
                                Positioned(
                                  right: 0,
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
