import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_hotel_app/model/hotel.dart';

class HotelComponent extends StatefulWidget {
  final HotelModel hotel;

  const HotelComponent({
    super.key,
    required this.hotel,
  });

  @override
  State<HotelComponent> createState() => _HotelComponentState();
}

class _HotelComponentState extends State<HotelComponent> {
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: widget.hotel.id,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 12),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.hotel.imageURL,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.hotel.name,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //location
                      Text(
                        widget.hotel.location,
                        style:
                            const TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //pricing
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "\$ ${widget.hotel.pricing}",
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " / month",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.yellow[700],
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.hotel.rating.toString(),
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.heart,
                        size: 16,
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
