import 'package:flutter/material.dart';
import 'package:hotel_ui/hotel/data.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({super.key});

  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: hotel.map((h) {
        return Column(
          children: [
            Container(
              height: 130,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: -10, blurRadius: 20, offset: Offset(0, 5))
                  ]),
              child: Row(
                children: [
                  Container(
                      height: double.infinity,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(h["image"]),
                              fit: BoxFit.fill))),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            h["name"],
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            h["description"],
                            style:
                                TextStyle(fontSize: 12, color: Colors.blueGrey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            h["Price"],
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.directions_car,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.hot_tub,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.local_bar,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.wifi,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                          width: 150,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Book Now"),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.red))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        );
      }).toList(),
    );
  }
}
