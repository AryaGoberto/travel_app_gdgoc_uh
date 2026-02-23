import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String seletedPackage = 'Reguler';
  int? selectedPeople;
  bool includeGuide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Booking Wisata"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pantai Losari",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 18,
                          ),
                          Text(
                            "Makassar, Indonesia",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage("assets/images/pantai_losari.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              child: Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.assignment, color: Colors.blue),
                        Text(
                          "Informasi Pesanan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),
                    // TEXTFIELD
                    TextField(
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        labelText: "Nama Pemesan",
                        floatingLabelStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                    
                      ),
                    ),

                    SizedBox(height: 16),
                    TextField(
                      cursorColor: Colors.blue,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        labelText: "No Telpon",
                        floatingLabelStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)
                        )
                      ),
                    ),

                    SizedBox(height: 20),
                    // DROPDOWN
                    DropdownButtonFormField<String>(
                      value: seletedPackage,
                      decoration: InputDecoration(
                        labelText: "Pilih Paket",
                        prefixIcon: Icon(Icons.card_travel),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        isDense: true,
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'Reguler',
                          child: Text("Reguler - 250 K"),
                        ),
                        DropdownMenuItem(
                          value: 'Premium',
                          child: Text("Premium - 400 K"),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          seletedPackage = value!;
                        });
                      },
                    ),

                    SizedBox(height: 20),
                    // RADIO BUTTON
                    Text(
                      "Jumlah Orang",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: Column(
                        children: [
                          RadioListTile(
                            title: Text("1-2 Orang"),
                            value: 1,
                            dense: true,
                            activeColor: Colors.blue,
                            groupValue: selectedPeople,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) {
                              setState(() {
                                selectedPeople = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("3-5 Orang"),
                            value: 2,
                            groupValue: selectedPeople,
                            dense: true,
                            activeColor: Colors.blue,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) {
                              setState(() {
                                selectedPeople = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 8),
                    // CHECKBOX LIST
                    CheckboxListTile(
                      title: Text("Include Tour Guide"),
                      subtitle: Text(
                        "Tambahan 50K",
                        style: TextStyle(fontSize: 12),
                      ),
                      value: includeGuide,
                      dense: true,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          includeGuide = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Confirm Booking",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  "Terms Of Use",
                  style: TextStyle(
                    color: Colors.blue,
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
