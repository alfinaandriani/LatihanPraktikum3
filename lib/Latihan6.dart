import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan 6",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Mahasiswa"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> data = [
    {"nama": "Alfina", "hobi": "Membaca"},
    {"nama": "Nadiyah", "hobi": "Memasak"},
    {"nama": "Rifda", "hobi": "Bersepeda"},
    {"nama": "Devita", "hobi": "Menggambar"},
    {"nama": "Engie", "hobi": "Menulis"}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {},
            leading: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg?name=${data[index]["nama"]}&time=${DateTime.now().millisecondsSinceEpoch}',
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(data[index]["nama"] ?? ""),
            subtitle: Text(data[index]["hobi"] ?? ""),
          ),
        );
      },
    );
  }
}
