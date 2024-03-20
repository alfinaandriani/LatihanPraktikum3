import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Goyek',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
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
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      side: BorderSide(color: Colors.blue),
                      textStyle: TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
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
                  buildGridItem(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=',
                      'GoRide'),
                  buildGridItem(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=',
                      'GoCar'),
                  buildGridItem(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=',
                      'GoFood'),
                  buildGridItem(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=',
                      'GoSend'),
                  buildGridItem(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=',
                      'GoMart'),
                  buildGridItem(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=',
                      'GoPulsa'),
                  buildGridItem(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=',
                      'Check In'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(String imageUrl, String text) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              width: 50,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
