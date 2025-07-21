import 'package:flutter/material.dart';
import 'package:new_hotel_app/screens/booking/cancelled_booking.dart';
import 'package:new_hotel_app/screens/booking/completed_booking.dart';
import 'package:new_hotel_app/screens/booking/upcoming_booking.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "My Booking",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            indicatorWeight: 1,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(
                text: "Upcoming",
              ),
              Tab(
                text: "Completed",
              ),
              Tab(
                text: "Cancelled",
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: TabBarView(children: [
            UpcomingBooking(),
            CompletedBooking(),
            CancelledBooking()
          ]),
        ),
      ),
    );
  }
}
