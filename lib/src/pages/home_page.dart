import 'package:flutter/material.dart';
import 'package:learning_flutter/src/components/c_card_park_short.dart';
import 'package:learning_flutter/src/util/datetime_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final name = "Lameck";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            // Greeting
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                child: RichText(
                  text: TextSpan(
                    text: '${DateTimeUtils.getGreeting()}, ',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Estacionamentos Recentes
            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   child: const Padding(
            //     padding: EdgeInsets.only(
            //       top: 8.0,
            //       left: 8.0,
            //     ),
            //     child: Text(
            //       'Vistos recentemente',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),

            // CarouselSlider(
            //   options: CarouselOptions(
            //     height: 200.0,
            //     enableInfiniteScroll: false,
            //     initialPage: 0,
            //     aspectRatio: 1.0 / 2,
            //     enlargeCenterPage: true,
            //   ),
            //   items: [1, 2, 3, 4, 5].map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //           width: MediaQuery.of(context).size.width,
            //           margin: const EdgeInsets.only(left: 3),
            //           decoration: const BoxDecoration(
            //             color: Colors.yellow,
            //           ),
            //           child: Center(
            //             child: Text(
            //               'Card $i',
            //               style: const TextStyle(fontSize: 32.0),
            //             ),
            //           ),
            //         );
            //       },
            //     );
            //   }).toList(),
            // ),

            // Estacionamentos
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                  bottom: 8.0,
                ),
                child: Text(
                  'Vistos Recentemente',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CardParkShort(
                    name: "Lameco Park",
                    viewedAt: '2022-12-06T17:56:15.415+00:00',
                  ),
                  CardParkShort(
                    name: "Sanders Parking",
                  ),
                  CardParkShort(
                    name: "Recife Park City",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
