import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacilityItemComponent extends StatelessWidget {
  final String name;

  const FacilityItemComponent({super.key, required this.name});

  Widget getFacilityIcon(String name) {
    switch (name) {
      case "Wi-fi":
        return const Icon(CupertinoIcons.wifi);
      case "Restaurant":
        return const Icon(Icons.restaurant);
      case "Coffee":
        return const Icon(Icons.coffee);
      case "Garden":
        return const Icon(CupertinoIcons.tree);
      case "Gym":
        return const Icon(Icons.sports_gymnastics);
      default:
        return const Icon(Icons.hotel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(100),
          ),
          child: getFacilityIcon(name),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
