import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7 Bonus',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Goyek',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your favorites',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.green),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 2,
                children: [
                  buildGridItem('assets/GoRide.png', 'GoRide'),
                  buildGridItem('assets/GoCar.png', 'GoCar'),
                  buildGridItem('assets/GoFood.png', 'GoFood'),
                  buildGridItem('assets/GoSend.png', 'GoSend'),
                  buildGridItem('assets/GoMart.png', 'GoMart'),
                  buildGridItem('assets/GoPulsa.png', 'GoPulsa'),
                  buildGridItem('assets/Check In.png', 'Check In'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(String iconPath, String text) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 50,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
