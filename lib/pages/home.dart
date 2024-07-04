import 'package:flutter/material.dart';


class  Home extends StatelessWidget {
  const  Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [

                UserAccountsDrawerHeader(
                  accountName: Text("hassanjebri@gmail.com"),
                  accountEmail: Text("hassan jebri"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/img/hsan.jpg"), // Replace with your image path
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
              child: Text("Developed by  Hassan jebri © 2024",
                  style: TextStyle(fontSize: 16)),
            )

          ],

        ),
      ),

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
                      decoration: BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle)),

                  IconButton(
                      onPressed: () { },
                      icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("\$ 128"),
              )
            ],
          )
        ],
      ),
    ) ;
  }
}
