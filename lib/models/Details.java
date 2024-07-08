import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700], // Adjusted background color
        title: Text("Details Screen"),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.green[400], // Adjusted color for badge
                  shape: BoxShape.rectangle,
                ),
                child: Text(
                  "8",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
          SizedBox(width: 16),
          Text(
            "\$128",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/img/hsan.jpg",
                width: 200, // Adjusted image width
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                "\$12.99",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  margin: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: Colors.redAccent, // Adjusted tag color
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "new",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Row(
                  children: [
                    Icon(Icons.star, size: 24, color: Colors.yellow),
                    Icon(Icons.star, size: 24, color: Colors.yellow),
                    Icon(Icons.star, size: 24, color: Colors.yellow),
                    Icon(Icons.star, size: 24, color: Colors.yellow),
                    Icon(Icons.star, size: 24, color: Colors.yellow),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 24, color: Colors.green),
                    Text(" Flower Shop", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Details:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Le processeur est le cerveau de l'ordinateur. Pour les PC gamer, on privilégie généralement des processeurs multi-cœurs puissants, comme ceux de la gamme Intel Core i5/i ouvent 16 Go ou plus, pour gérer les jeux les plus exigeants. De plus, il est équipé de solutions de stockage rapides, comme des SSD, pour des temps de chargement réduits, et d'un système de refroidissement efficace pour maintenir des températures stables. L'ensemble est souvent complété par un boîtier avec un bon flux d'air et un design esthétique, parfois avec des éclairages RGB.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    maxLines: isShowMore ? null : 3,
                    overflow: isShowMore ? TextOverflow.visible : TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isShowMore = !isShowMore;
                        });
                      },
                      child: Text(isShowMore ? "Show Less" : "Show More"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
