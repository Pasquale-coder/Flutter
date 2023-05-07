import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          for (var i in lista)
            GridTile(
                header: Container(
                  color: Colors.orange,
                  child: Text("Lorem ipsum"),
                ),
                footer: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.favorite,color: Colors.red,),
                ),
                child: Image.network(
                  "https://i.pravatar.cc/1000",
                  fit: BoxFit.cover,
                ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}
