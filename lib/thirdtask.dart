import 'package:flutter/material.dart';

class Thirdtask extends StatefulWidget {
  const Thirdtask({super.key});

  @override
  State<Thirdtask> createState() => _ThirdtaskState();
}

class _ThirdtaskState extends State<Thirdtask> {

  bool isGridView = true;
  final List<String> items = List.generate(20, (index) => 'Item $index');
  final ScrollController _scrollController = ScrollController();

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
                isGridView = !isGridView;
              });
            },
          ),
        ],
      ),
      body: Scrollbar(
        controller: _scrollController,
        thickness: 8,
        radius: Radius.circular(8),
        child: isGridView
            ? GridView.builder(
          controller: _scrollController,
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
          controller: _scrollController,
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
      ),
    );
  }
}
