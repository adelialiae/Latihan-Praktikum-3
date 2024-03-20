import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Penuhi Lindungi",
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 74, 148, 212),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Entering a Public Space",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Stay alert to stay safe",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 0), // Spacer
                      Container(
                        padding: EdgeInsets.all(0),
                        child: Image.network(
                          'https://image.gambarpng.id/pngs/gambar-transparent-hand-holding-smartphone_48242.png',
                          height: 100,
                          width: 180,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors
                                    .black), // Panah ke bawah di kiri teks
                            SizedBox(width: 8), // Spacer
                            Text(
                              "Check in Preference",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code,
                            color: Color.fromARGB(
                                255, 49, 105, 173)), // Ubah warna ikon
                        label: const Text("Check-In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(201, 49, 105, 173))),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 185, 224, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10), // Atur padding horizontal
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildItem(
                            itemName: "Covid19 Vaccine",
                            imageUrl: 'img/covid19.png',
                          ),
                          _buildItem(
                            itemName: "Covid19 Test Result",
                            imageUrl: 'img/cekcovid.png',
                          ),
                          _buildItem(
                            itemName: " EHAC",
                            imageUrl: ' img/ehac.png',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildItem(
                            itemName: "Travel Regulations ",
                            imageUrl: 'img/travel.png',
                          ),
                          _buildItem(
                            itemName: "Telemedicine",
                            imageUrl: 'img/telemedicine.png',
                          ),
                          _buildItem(
                            itemName: "Hospital Facility",
                            imageUrl: 'img/hospital.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 3,
              right: 3,
              child: ClipOval(
                child: Container(
                  width: 70, // Atur lebar container
                  height: 70, // Atur tinggi container
                  child: IconButton(
                    iconSize: 40, // Besar ikon
                    icon: const Icon(Icons.info,
                        color: Colors.white), // Warna ikon putih
                    onPressed: () {
                      // Action when info icon is pressed
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItem({required String itemName, required String imageUrl}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 90,
            width: 90,
          ),
          const SizedBox(height: 8),
          Text(
            itemName,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
