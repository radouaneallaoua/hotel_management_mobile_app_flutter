import 'package:flutter/material.dart';
import 'package:new_hotel_app/components/completed_hotel_component.dart';
import 'package:new_hotel_app/model/hotel.dart';

class CompletedBooking extends StatefulWidget {
  const CompletedBooking({super.key});

  @override
  State<CompletedBooking> createState() => _CompletedBookingState();
}

class _CompletedBookingState extends State<CompletedBooking> {
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
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
      child: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) =>
            CompletedHotelComponent(hotel: hotels[index]),
      ),
    );
  }
}

