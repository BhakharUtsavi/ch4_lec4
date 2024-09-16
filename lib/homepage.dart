import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed("firsttask");
            }, child: Text("First Task")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed("secondtask");
            }, child: Text("Second Task")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed("thirdtask");
            }, child: Text("Third Task")),
          ],
        ),
      ),
    );
  }
}
