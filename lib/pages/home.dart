import 'package:flutter/material.dart';

import '../models/Item.dart';
import 'details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 141, 95),
        title: Text("Home"),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    child: Text(
                      "8",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                    //  color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("\$ 128"),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("hassanjebri@gmail.com"),
              accountEmail: Text("hassan jebri"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/img/hsan.jpg"), // Replace with your image path
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/sky.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text("My products"),
              leading: Icon(Icons.add_shopping_cart),
              onTap: () {},
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.help_center),
              onTap: () {},
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
              onTap: () {},
            ),
            Spacer(), // This widget pushes the following widgets to the bottom
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                "Developed by Ali Hassan © 2024",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 22),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 33,
          ),
          itemCount: items.length, // Use the length of the items list
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(product: items[index]),
                  ),
                );
              },
              child:
              GridTile(
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.asset(item.imgPath),
                      ),
                    ),
                  ],
                ),
                footer: GridTileBar(
                  trailing: IconButton(
                    color: Color.fromARGB(255, 62, 94, 70),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                  leading: Text("\$${item.price}"),
                  title: Text("aaa"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
