import 'package:flutter/material.dart';
import 'package:travel_app_gdgoc_uh/booking_screen.dart';
import 'model/data.dart';

class DetailScreen extends StatelessWidget {
  final Wisata wisata;
  const DetailScreen({required this.wisata, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(wisata.nama, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                        image: AssetImage(wisata.imageUtama),
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
                    wisata.nama,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    wisata.harga,
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
                    wisata.lokasi,
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
                  Text(
                    "${wisata.rating}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "(${wisata.reviews} reviews)",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // ===== INFO ROW =====
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: wisata.fasilitas.map((fasilitas) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Icon(fasilitas.icon, color: Colors.blue),
                          SizedBox(height: 4),
                          Text(fasilitas.label),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),

              SizedBox(height: 16),
              // ===== DESCRIPTION =====
              Text(wisata.deskripsi, style: TextStyle(height: 1.5)),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: wisata.galeri.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(wisata.galeri[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 24),

              // ===== BOOK BUTTON =====
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingScreen(wisata: wisata),
                    ),
                  );
                },
                child: Text(
                  "Book Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
