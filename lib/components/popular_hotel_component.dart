import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularHotelComponent extends StatefulWidget {
  final double rating;
  final String imageURL;
  final String name;
  final String location;
  final double pricing;

  const PopularHotelComponent(
      {super.key,
      required this.rating,
      required this.imageURL,
      required this.name,
      required this.location,
      required this.pricing});

  @override
  State<PopularHotelComponent> createState() => _PopularHotelComponentState();
}

class _PopularHotelComponentState extends State<PopularHotelComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.only(right: 8, left: 8, top: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image + rating
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.imageURL,
                  width: 180,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  margin: const EdgeInsets.only(right: 10, top: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.yellow[800],
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.rating.toString(),
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          //hotel name
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.name,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          //location
          const SizedBox(
            height: 2,
          ),
          Text(
            widget.location,
            style: const TextStyle(fontSize: 10, color: Colors.grey),
          ),

          //pricing
          SizedBox(
            width: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "\$ ${widget.pricing}",
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
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.heart,
                      size: 16,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
