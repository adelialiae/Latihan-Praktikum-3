import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Goyek",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Goyek",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: const Color.fromARGB(255, 60, 149, 69),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your Favorites",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol edit ditekan
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white // Ubah latar belakang menjadi transparan
                          ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 36, 148,
                                75), // Atur warna tepian sesuai keinginan Anda (biru)
                            width:
                                2, // Atur ketebalan tepian sesuai keinginan Anda
                          ),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(85, 45),
                      ),
                    ),
                    child: const Text(
                      "Edit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 51, 159, 56),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 0),
                    Row(
                      children: [
                        _buildItem("GoRide", 'img/ride.png'),
                        _buildItem("GoCar", 'img/car.png'),
                        _buildItem("GoFood", 'img/food.png'),
                        _buildItem("GoSend", 'img/send.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        _buildItem("GoMart", 'img/shop.png'),
                        _buildItem("GoPulsa", 'img/phone.png'),
                        _buildItem("Check In", 'img/care.png'),
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

  Widget _buildItem(String itemName, String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(right: 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Image.network(
              imageUrl,
              width: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Text(
              itemName,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
