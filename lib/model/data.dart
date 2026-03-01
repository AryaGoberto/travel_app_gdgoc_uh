import 'package:flutter/material.dart';

class Wisata {
  final String nama;
  final String lokasi;
  final String harga;
  final double rating;
  final int reviews;
  final String deskripsi;
  final String imageUtama;
  final List<String> galeri;
  final List<Fasilitas> fasilitas;
  Wisata({
    required this.nama,
    required this.lokasi,
    required this.harga,
    required this.rating,
    required this.reviews,
    required this.deskripsi,
    required this.imageUtama,
    required this.galeri,
    required this.fasilitas,
  });
}

class Fasilitas {
  final IconData icon;
  final String label;
  Fasilitas({required this.icon, required this.label});
}

// Dummy Data
final List<Wisata> daftarWisata = [
  Wisata(
    nama: 'Pantai Losari',
    lokasi: 'Makassar, Sulawesi Selatan',
    harga: 'Rp 0',
    rating: 4.8,
    reviews: 234,
    deskripsi:
        'Pantai Losari adalah ikon Kota Makassar yang menyuguhkan panorama matahari terbenam spektakuler dari anjungan betonnya yang khas. Kawasan ini menjadi pusat aktivitas sosial dan kuliner lokal, memadukan pesona Masjid Terapung dengan kelezatan Pisang Epe di tepi Selat Makassar..',
    imageUtama: "assets/images/pantai_losari/pantai_losari.jpg",
    galeri: [
      "assets/images/pantai_losari/panlos1.jpg",
      "assets/images/pantai_losari/panlos2.jpg",
      "assets/images/pantai_losari/panlos3.jpg",
    ],
    fasilitas: [
      Fasilitas(icon: Icons.local_parking, label: 'Parkir'),
      Fasilitas(icon: Icons.restaurant, label: 'Restoran'),
      Fasilitas(icon: Icons.wc, label: 'Toilet'),
      Fasilitas(icon: Icons.smoking_rooms_outlined, label: 'Smoking'),
    ],
  ),
  Wisata(
    nama: 'Candi Borobudur',
    lokasi: 'Magelang, Jawa Tengah',
    harga: 'Rp 75.000',
    rating: 4.6,
    reviews: 189,
    deskripsi:
        'Candi Borobudur adalah monumen Buddha terbesar di dunia yang terletak di Magelang, Jawa Tengah. Situs warisan dunia ini memiliki arsitektur megah berupa ribuan panel relief serta ratusan stupa yang mengelilingi stupa utama di puncaknya.',
    imageUtama: "assets/images/candi_borobudur/candi_borobudur_1.jpg",
    galeri: [
      "assets/images/candi_borobudur/candi_borobudur_2.jpg",
      "assets/images/candi_borobudur/candi_borobudur_3.jpg",
      "assets/images/candi_borobudur/candi_borobudur_4.jpg",
    ],
    fasilitas: [
      Fasilitas(icon: Icons.hiking, label: 'Tracking'),
      Fasilitas(icon: Icons.hotel, label: 'Penginapan'),
      Fasilitas(icon: Icons.local_parking, label: 'Parkir'),
      Fasilitas(icon: Icons.restaurant_outlined, label: 'Kuliner'),
    ],
  ),
  Wisata(
    nama: 'Gunung Bromo',
    lokasi: 'Malang, Jawa Timur',
    harga: 'Rp 54.000',
    rating: 4.9,
    reviews: 521,
    deskripsi:
        'Gunung Bromo adalah ikon wisata Jawa Timur yang menawarkan panorama kawah aktif yang megah di tengah Lautan Pasir. Fenomena matahari terbit dari Puncak Penanjakan serta kemegahan tebing kaldera menjadikannya destinasi alam paling spektakuler.',
    imageUtama: "assets/images/gunung_bromo/gunung_bromo_1.jpg",
    galeri: [
      "assets/images/gunung_bromo/gunung_bromo_2.jpg",
      "assets/images/gunung_bromo/gunung_bromo_3.jpg",
      "assets/images/gunung_bromo/gunung_bromo_4.jpg",
    ],
    fasilitas: [
      Fasilitas(icon: Icons.local_parking, label: 'Parkir'),
      Fasilitas(icon: Icons.restaurant_outlined, label: 'Kuliner'),
      Fasilitas(icon: Icons.shopping_bag, label: 'Belanja'),
      Fasilitas(icon: Icons.security_outlined, label: 'Keamanan'),
    ],
  ),
  Wisata(
    nama: 'Labuan Bajo',
    lokasi: 'Manggarai Barat, Nusa Tenggara Timur',
    harga: 'Rp 75.000',
    rating: 4.7,
    reviews: 312,
    deskripsi:
        'Labuan Bajo adalah gerbang utama menuju Taman Nasional Komodo yang menawarkan panorama perbukitan eksotis serta gugusan pulau cantik. Sebagai destinasi kelas dunia, kawasan ini memadukan kemegahan kapal Phinisi dengan keindahan alam bawah laut yang memukau.',
    imageUtama: 'assets/images/labuan_bajo/labuanbajo_1.jpg',
    galeri: [
      "assets/images/labuan_bajo/labuanbajo_2.jpg",
      "assets/images/labuan_bajo/labuanbajo_3.jpg",
      "assets/images/labuan_bajo/labuanbajo_4.jpg",
    ],
    fasilitas: [
      Fasilitas(icon: Icons.restaurant_outlined, label: 'Kuliner'),
      Fasilitas(icon: Icons.local_parking, label: 'Parkir'),
      Fasilitas(icon: Icons.directions_boat, label: 'Perjalanan Laut'),
      Fasilitas(icon: Icons.shopping_bag, label: 'Belanja'),
    ],
  ),
  Wisata(
    nama: 'Toraja',
    lokasi: 'Toraja, Sulawesi Selatan',
    harga: 'Rp 30.000',
    rating: 4.9,
    reviews: 445,
    deskripsi:
        'Tana Toraja adalah dataran tinggi eksotis di Sulawesi Selatan yang terkenal dengan arsitektur rumah adat Tongkonan yang megah. Kawasan ini memadukan keindahan alam pegunungan dengan tradisi pemakaman unik serta keramahtamahan budaya masyarakatnya yang mendunia.',
    imageUtama: 'assets/images/toraja/toraja_1.jpg',
    galeri: [
      "assets/images/toraja/toraja_2.jpg",
      "assets/images/toraja/toraja_3.jpg",
      "assets/images/toraja/toraja_4.jpg",
    ],
    fasilitas: [
      Fasilitas(icon: Icons.tour, label: 'Guide'),
      Fasilitas(icon: Icons.camera_alt, label: 'Fotografi'),
      Fasilitas(icon: Icons.hotel, label: 'Hotel'),
      Fasilitas(icon: Icons.car_rental, label: 'Rental'),
    ],
  ),
];
