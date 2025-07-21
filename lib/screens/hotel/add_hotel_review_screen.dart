import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_hotel_app/model/hotel.dart';

import '../../components/hotel_component.dart';

class AddHotelReviewScreen extends StatefulWidget {
  final HotelModel hotel;

  const AddHotelReviewScreen({super.key, required this.hotel});

  @override
  State<AddHotelReviewScreen> createState() => _AddHotelReviewScreenState();
}

class _AddHotelReviewScreenState extends State<AddHotelReviewScreen> {
  int rating = 1;
  late TextEditingController? _reviewTextEditingController;
  GlobalKey<FormState>? _formKey;

  void _handleRatingChange(int newRating) => setState(() {
    rating = newRating;
  });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _reviewTextEditingController = TextEditingController(text: "");
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _reviewTextEditingController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: const Text("leave a review"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                children: [
                  HotelComponent(hotel: widget.hotel),
                  const Divider(indent: 10, thickness: 0.3),
                  const SizedBox(height: 20),
                  Center(
                    child: const Text(
                      "What are your thoughts on",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      widget.hotel.name,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  //Rating
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => _handleRatingChange(1),
                        child:
                            rating >= 1
                                ? const Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.orangeAccent,
                                  size: 40,
                                )
                                : const Icon(CupertinoIcons.star, size: 30),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => _handleRatingChange(2),
                        child:
                            rating >= 2
                                ? const Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.orangeAccent,
                                  size: 40,
                                )
                                : const Icon(CupertinoIcons.star, size: 30),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => _handleRatingChange(3),
                        child:
                            rating >= 3
                                ? const Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.orangeAccent,
                                  size: 40,
                                )
                                : const Icon(CupertinoIcons.star, size: 30),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => _handleRatingChange(4),
                        child:
                            rating >= 4
                                ? const Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.orangeAccent,
                                  size: 40,
                                )
                                : const Icon(CupertinoIcons.star, size: 30),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => _handleRatingChange(5),
                        child:
                            rating >= 5
                                ? const Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.orangeAccent,
                                  size: 40,
                                )
                                : const Icon(CupertinoIcons.star, size: 30),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: (newValue) {
                        if (newValue!.trim() == "") {
                          return "Review can not be empty";
                        }
                        return null;
                      },
                      controller: _reviewTextEditingController,
                      minLines: 2,
                      maxLines: 2,
                      decoration: InputDecoration(
                        label: const Text("write a review"),
                        filled: true,
                        fillColor: Colors.grey[100],
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(
                          Icons.edit,
                          size: 25,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: MaterialButton(
                  color: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  onPressed: () {
                    if (_formKey!.currentState!.validate()) {
                      print(_reviewTextEditingController!.text);
                    }
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
