import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_hotel_app/model/hotel.dart';

import 'add_hotel_review_screen.dart';

class HotelRatingsReviewsScreen extends StatelessWidget {
  final HotelModel hotel;

  const HotelRatingsReviewsScreen({super.key, required this.hotel});

  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.blueAccent,
      label: const Text(
        "add review",
        style: TextStyle(color: Colors.white),
      ),
      icon: const Icon(
        CupertinoIcons.add,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddHotelReviewScreen(
                  hotel: hotel,
                )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: _buildFloatingActionButton(context),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 46,
        forceMaterialTransparency: true,
        title: const Text(
          "details",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontFamily: "galibri", fontSize: 18),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(7),
            margin: const EdgeInsets.only(left: 6),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              CupertinoIcons.back,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Rating & Reviews",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(5, (index) {
                        return Row(
                          children: [
                            Text(
                              "${5 - index}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: (5 - index) * 20 + 20,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const SizedBox(
                                width: 1,
                              ),
                            ),
                            Container(
                              width: 160 - (5 - index) * 20 + 20,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                              ),
                            )
                          ],
                        );
                      })
                    ],
                  ),
                  //general summary
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "1000 reviews",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Scrollbar(
                interactive: true,
                thickness: 8,
                radius: const Radius.circular(20),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(1000),
                                          child: Image.asset(
                                            "assets/photo.png",
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Column(children: [
                                          Text(
                                            "Allaoua Radouane $index",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 14,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 14,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 14,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 14,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 14,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text("${index + 1 * 6} mins ago")
                                            ],
                                          ),
                                        ]),
                                      ],
                                    ),
                                    const Text(
                                      "...",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 10),
                                  child: Text(
                                    "this is a comment form the user allaoua radouane for the hotel comment.",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                const Divider(
                                  indent: 10,
                                  thickness: 0.3,
                                )
                              ]));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
