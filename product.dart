import 'package:flutter/material.dart';
import 'package:inventori/main.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int addingItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemCount: addingItem,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Image.network("https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q2Ny8yODQvMzM3OTE1ODcwMi84MDIxOC8yOTFhYzQ1Mi82MDJiM2I0YU43MzE0MjUzMg.jpg.dpg.webp"),
              trailing: IconButton(
                  onPressed: (() {
                    setState(() {
                      addingItem--;
                    });
                  }),
                  icon: Icon(Icons.delete)),
              title: Text(
                "Brand New Shoes",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                "SH-231",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 50),
        child: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              addingItem++;
            });
          },
          icon: Icon(Icons.add),
          label: Text("Tambah"),
        ),
      ),
    );
  }
}
