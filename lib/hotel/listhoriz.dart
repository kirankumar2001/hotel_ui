import 'package:flutter/material.dart';
import 'data.dart';

class ListHorizontal extends StatefulWidget {
  const ListHorizontal({super.key});

  @override
  State<ListHorizontal> createState() => _ListHorizontalState();
}

class _ListHorizontalState extends State<ListHorizontal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: hotel.map((h) {
          return Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 250,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: -10,
                          blurRadius: 20,
                          offset: Offset(0, 5))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.grey,
                            image: DecorationImage(
                                image: NetworkImage(h["image"]),
                                fit: BoxFit.fill))),
                    SizedBox(
                      height: 10,
                    ),
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
                        style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            h["Price"],
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.13,
                          ),
                          Text(
                            "${h["rate"]}",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}
