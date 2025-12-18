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
      title: 'Navegación',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

// Home

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir a Perfil'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PerfilPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Perfil

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hola Enmanuel',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Ver Detalle'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetallePage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Regresar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

//Detalle

class DetallePage extends StatelessWidget {
  const DetallePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Detalle del Producto',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text('Curso Flutter Avanzado'),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Cerrar sesión'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
