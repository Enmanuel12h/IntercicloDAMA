import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Widgets',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividad Práctica 1'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementar,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Contador Interactivo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Valor: $contador',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            ancho < 600
                ? Column(
                    children: const [
                      InfoCard(titulo: 'Sección 1'),
                      SizedBox(height: 12),
                      InfoCard(titulo: 'Sección 2'),
                    ],
                  )
                : Row(
                    children: const [
                      Expanded(child: InfoCard(titulo: 'Sección 1')),
                      SizedBox(width: 12),
                      Expanded(child: InfoCard(titulo: 'Sección 2')),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String titulo;

  const InfoCard({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
