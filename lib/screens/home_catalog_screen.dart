import 'package:flutter/material.dart';
import 'package:new_hotel_app/screens/hotel/hotel_details_screen.dart';

import '../components/hotel_component.dart';
import '../components/popular_hotel_component.dart';
import '../model/hotel.dart';

class HomeCatalog extends StatefulWidget {
  const HomeCatalog({super.key});

  @override
  State<HomeCatalog> createState() => _HomeCatalogState();
}

class _HomeCatalogState extends State<HomeCatalog> {
  List<HotelModel> hotels = [
    const HotelModel(
        id: "1",
        rating: 4.9,
        name: "hotel gardens",
        location: "London, England",
        pricing: 1500,
        imageURL: "assets/img.png"),
    const HotelModel(
        id: "2",
        rating: 4.8,
        name: "Nexen suites",
        location: "Paris, France",
        pricing: 1200,
        imageURL: "assets/img_1.png"),
    const HotelModel(
        id: "3",
        rating: 4.5,
        name: "hotel gardens",
        location: "London, England",
        pricing: 1500,
        imageURL: "assets/img_2.png"),
    const HotelModel(
        id: "4",
        rating: 4.5,
        name: "hotel gardens",
        location: "London, England",
        pricing: 1500,
        imageURL: "assets/img_3.png"),
    const HotelModel(
        id: "5",
        rating: 4.9,
        name: "hotel gardens",
        location: "London, England",
        pricing: 1500,
        imageURL: "assets/img_3.png"),
    const HotelModel(
        id: "6",
        rating: 4.8,
        name: "hotel gardens",
        location: "London, England",
        pricing: 1500,
        imageURL: "assets/img_4.png"),
    const HotelModel(
        id: "7",
        rating: 4.5,
        name: "hotel gardens",
        location: "London, England",
        pricing: 1500,
        imageURL: "assets/img_5.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          //profile + notifications
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.asset(
                "assets/photo.png",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            title: const Text(
              "allaoua radouane",
              style: TextStyle(fontSize: 12),
            ),
            subtitle: const Text(
              "Casablanca,Morocco",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: GestureDetector(
              onTap: () => () {},
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications_none_rounded),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Hotels",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("View all"))
                ],
              ),
              SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotels.length,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: PopularHotelComponent(
                                rating: hotels[index].rating,
                                imageURL: hotels[index].imageURL,
                                name: hotels[index].name,
                                location: hotels[index].location,
                                pricing: hotels[index].pricing),
                          ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your offer List",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("View all"))
                ],
              ),
            ]),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
            child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: hotels.length,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HotelDetailsScreen(hotel: hotels[index])));
                      },
                      child: HotelComponent(
                        hotel: hotels[index],
                      ),
                    )),
          ))
        ],
      ),
    );
  }
}
