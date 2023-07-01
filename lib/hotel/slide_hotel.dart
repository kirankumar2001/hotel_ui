import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

import 'data.dart';

class SlideHotel extends StatefulWidget {
  const SlideHotel({super.key});

  @override
  State<SlideHotel> createState() => _SlideHotelState();
}

class _SlideHotelState extends State<SlideHotel> {
  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: search.map((e) {
        return SizedBox(
            height: 350,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(e["image"])),
                          //color: blues,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                                colors: [Colors.black87, Colors.black12])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 8),
                      child: Text(
                        e["name"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        e["place"],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: 150,
                        child: Row(
                          children: [
                            PannableRatingBar(
                              rate: rating,
                              items: List.generate(
                                  5,
                                  (index) => const RatingWidget(
                                        selectedColor: Colors.green,
                                        unSelectedColor: Colors.grey,
                                        child: Icon(
                                          Icons.star,
                                          size: 22,
                                        ),
                                      )),
                              onChanged: (value) {
                                // the rating value is updated on tap or drag.
                                setState(() {
                                  rating = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("$rating")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
      }).toList(),
    );
  }
}
