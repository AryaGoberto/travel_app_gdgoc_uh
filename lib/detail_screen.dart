import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          title: Text(
            "Destinasi Wisata",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage("assets/images/pantai_losari.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.favorite_border, color: Colors.red),
                    ),
                  ),
                ],
              ),
              //
              SizedBox(height: 20),

              // ===== TITLE + PRICE =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pantai Losari",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp 250k",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 6),

              // ===== LOCATION =====
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.black),
                  SizedBox(width: 4),
                  Text(
                    "Makassar, Indonesia",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),

              SizedBox(height: 12),

              // ===== RATING =====
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 4),
                  Text("4.8", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 6),
                  Text("(1.2k reviews)", style: TextStyle(color: Colors.grey)),
                ],
              ),

              SizedBox(height: 16),

              // ===== INFO ROW =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.access_time, color: Colors.blue),
                      SizedBox(height: 4),
                      Text("24 Jam"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.smoking_rooms, color: Colors.blue),
                      SizedBox(height: 4),
                      Text("Smoking Room"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.local_parking, color: Colors.blue),
                      SizedBox(height: 4),
                      Text("Parking Lot"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.family_restroom_rounded, color: Colors.blue),
                      SizedBox(height: 4),
                      Text("Toilet"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),
              // ===== DESCRIPTION =====
              Text(
                "Pantai Losari adalah ikon wisata Kota Makassar yang terkenal sebagai tempat terbaik untuk menikmati sunset. Area ini memiliki pelataran luas yang nyaman untuk berjalan santai dan menikmati kuliner khas seperti Pisang Epe.",
                style: TextStyle(height: 1.5),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/panlos1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/panlos2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/panlos3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              Spacer(),

              // ===== BOOK BUTTON =====
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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