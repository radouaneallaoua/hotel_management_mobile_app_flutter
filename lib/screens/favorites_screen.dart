import 'package:flutter/material.dart';

import '../components/popular_hotel_component.dart';
import '../model/Hotel.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<HotelModel> hotels = [
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
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          "favorites",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10,left:10,right:10),
        child: Center(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 14,crossAxisSpacing: 14),
              itemCount: hotels.length,
              itemBuilder: (context, index) => PopularHotelComponent(
                  rating: hotels[index].rating,
                  imageURL: hotels[index].imageURL,
                  name: hotels[index].name,
                  location: hotels[index].location,
                  pricing: hotels[index].pricing)),
        ),
      ),
    ));
  }
}
