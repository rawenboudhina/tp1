import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),  // Définit le thème avec la couleur verte
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ma première application Flutter'),
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
  String message = 'Hello'; // Changement initial du message

  void _incrementCounter() {
    setState(() {
      _counter++;
      message = "Hello $_counter"; // Mise à jour du message après incrémentation
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      message = "Hello $_counter"; // Mise à jour du message après décrémentation
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              message, // Affichage du message dynamique
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Aligne les boutons à droite
        children: <Widget>[
          FloatingActionButton(
            onPressed: _decrementCounter, // Décrémenter le compteur
            tooltip: 'Decrement',
            child: const Icon(Icons.exposure_minus_1), // Icône de décrémentation
          ),
          const SizedBox(width: 10), // Espace entre les deux boutons
          FloatingActionButton(
            onPressed: _incrementCounter, // Incrémenter le compteur
            tooltip: 'Increment',
            child: const Icon(Icons.add), // Icône d'incrémentation
          ),
        ],
      ),
    );
  }
}
