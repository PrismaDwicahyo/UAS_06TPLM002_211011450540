import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,  // Membuat body meluas ke belakang AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,  // Memastikan judul berada di tengah
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Aksi saat ikon menu ditekan
            print("Menu pressed");
          },
        ),
        title: const Text(
          'Weatherman',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        flexibleSpace: const DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/forest.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          // Menambahkan logo + di pojok kanan atas dalam lingkaran
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                print("Logo + tapped");
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,  // Warna lingkaran
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,  // Warna ikon +
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/forest.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Bagian atas dengan posisi teks yang dipindahkan ke atas
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 80),  // Mengatur jarak dari atas
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Harlem',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Tuesday, January 10, 2019',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      '15°c',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(20, (index) {
                        return Container(
                          width: 10,
                          height: 3,
                          color: index % 2 == 0 ? Colors.white54 : Colors.transparent,
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                        );
                      }),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Cloudy',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '25°C / 28°C',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Menambahkan gambar gelas berbentuk lingkaran dari Flutter
                    Icon(
                      Icons.local_drink, // Ikon gelas
                      color: Colors.white,
                      size: 40,  // Ukuran gambar gelas lebih kecil
                    ),
                  ],
                ),
              ),
            ),
            // Bagian bawah dengan teks prediksi cuaca yang tidak dipindahkan
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.wb_sunny, color: Colors.yellow, size: 30),
                        SizedBox(height: 8),
                        Text(
                          '25°C / 28°C',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.thunderstorm, color: Colors.white70, size: 30),
                        SizedBox(height: 8),
                        Text(
                          '20°C',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Friday',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.wb_cloudy, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text(
                          '20°C',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Saturday',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
