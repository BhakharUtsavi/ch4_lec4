import 'package:flutter/material.dart';

class SecondTask extends StatefulWidget {
  const SecondTask({super.key});

  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {

  bool isGridView = true; // Initial view is GridView
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle ListView & GridView'),
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGridView = !isGridView; // Toggle view
              });
            },
          ),
        ],
      ),
      body: isGridView
          ? GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        padding: EdgeInsets.all(10.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.lightBlueAccent,
            child: Center(child: Text(items[index])),
          );
        },
      )
          : ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(15),
            color: Colors.amber,
            child: Text(
              items[index],
              style: TextStyle(fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
