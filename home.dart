// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Tutorials",
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Wellcome",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Product In",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        '10',
                        style: const TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Product Out",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        '4',
                        style: const TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_upward,
                  size: 40,
                ),
              ],
            ),
            Text('Low Stock', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text(
              'Stock Warning',
              style: const TextStyle(fontSize: 10),
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Image.network(
                      "https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q2Ny8yODQvMzM3OTE1ODcwMi84MDIxOC8yOTFhYzQ1Mi82MDJiM2I0YU43MzE0MjUzMg.jpg.dpg.webp",
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Brand new shoes',
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'SH-231',
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 10),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text("Stock 1"),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      "https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q2Ny8yODQvMzM3OTE1ODcwMi84MDIxOC8yOTFhYzQ1Mi82MDJiM2I0YU43MzE0MjUzMg.jpg.dpg.webp",
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand new shoes', textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('SH-231', textAlign: TextAlign.left, style: const TextStyle(fontSize: 10)),
                    RaisedButton(
                      child: Text('Stok 1'),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    // child: Image.network('https://loremflickr.com/80/80'),
                    child: Image.network("https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q2Ny8yODQvMzM3OTE1ODcwMi84MDIxOC8yOTFhYzQ1Mi82MDJiM2I0YU43MzE0MjUzMg.jpg.dpg.webp", width: 80, height: 80),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand new shoes', textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('SH-231', textAlign: TextAlign.left, style: const TextStyle(fontSize: 10)),
                    RaisedButton(
                      child: Text('Stok 1'),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton.icon(
                color: Colors.blue,
                label: Text('New Transaction'),
                icon: Icon(Icons.arrow_downward),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
