import 'package:flutter/material.dart';

import 'package:hotel_ui/hotel/slide_hotel.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: false,
          pinned: false,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: SizedBox(
              height: 30,
              width: 200,
              child: TextField(
                  style: TextStyle(fontSize: 12),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(),
                      hintText: "Ernakulam/Kochi",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      labelStyle: TextStyle(fontSize: 12),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)))),
            ), //Text
          ), //FlexibleSpaceBar
          expandedHeight: 150, centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: Text(
            "Type Your Location",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IconButton
          actions: <Widget>[
            //IconButton
            IconButton(
              icon: Icon(Icons.favorite_border),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
        ), //SliverAppBar
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                width: 110,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.hotel), Text("Hotel")],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 70,
                width: 110,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.restaurant), Text("Restaurent")],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 70,
                width: 110,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.coffee), Text("Coffee")],
                    ),
                  ),
                ),
              )
            ],
          ),
          SlideHotel()
        ])) //SliverList
      ], //<Widget>[]
    ) //CustonScrollView
        );
  }
}
