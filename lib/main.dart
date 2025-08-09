import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());

  // const app = MaterialApp(title: "หัวข้อซ", home: Text("Hello World"));
  // runApp(app);

  runApp(
    MaterialApp(
      title: "หัวข้อ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: const Color.fromARGB(255, 137, 34, 255),
          centerTitle: true,
        ),
        body: Home(),
        // body: Text("Hello Father!"),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return Text("Hello Flutter! Step2");
    return Center(
      child: Container(
        color: Colors.amber,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(20),
        child: Text(
          "Hello Flutter Step3",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
