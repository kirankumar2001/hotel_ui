import 'package:flutter/material.dart';
import 'package:hotel_ui/hotel/listhoriz.dart';
import 'package:hotel_ui/hotel/slide.dart';

class AssignmetHotel extends StatefulWidget {
  const AssignmetHotel({super.key});

  @override
  State<AssignmetHotel> createState() => _AssignmetHotelState();
}

class _AssignmetHotelState extends State<AssignmetHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Hello  arjun",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                subtitle: Text(
                  "Find Your Favouriate Hotel",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                trailing: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.cover))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  elevation: 12,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIconColor: Colors.black,
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey[300],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Color.fromARGB(255, 206, 206, 206),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Color.fromARGB(255, 206, 206, 206),
                          ),
                        ),
                        hintText: "Search Hotels"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Popular Hotels",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              ListHorizontal(),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 18),
                child: Text(
                  "Hotel Package",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              SlideWidget()
            ],
          ),
        ),
      ),
    );
  }
}
