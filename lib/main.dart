import 'package:flutter/material.dart';
import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing', // Name of the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 58, 183, 150),
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Home Page'), // Name of the home page
      initialRoute: '/',
      routes: {
        '/page1': (context) => Page1(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Remove the const keyword here
        child: Column(
          children: [
            Text(
              'Data 1',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Colors.amber,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Data 2',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page1');
              },
              child: Text('Go to Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
