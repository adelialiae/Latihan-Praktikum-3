import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('BAR-BAR'),
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              labelColor: Colors.white,
              tabs: [Tab(text: "For You"), Tab(text: "Following")],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Image.network(
                          'https://via.placeholder.com/150',
                          width: 50,
                          height: 50,
                          errorBuilder: (context, error, stackTrace) {
                            return FlutterLogo(size: 35);
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const CircularProgressIndicator();
                          },
                        ),
                        title: Text("Data ke $index"),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class FollowingTab extends StatelessWidget {
  const FollowingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildItem(
                itemName: "EHAC",
                imageUrl: 'img/ehac.png',
              ),
              _buildItem(
                itemName: "Another Item",
                imageUrl: 'img/telemedicine.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildItem({required String itemName, required String imageUrl}) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            itemName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
