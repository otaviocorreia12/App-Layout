import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const AppLayout(),
    );
  }
}

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Layout'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 350, // Largura do retângulo
          height: 500, // Altura do retângulo
          decoration: BoxDecoration(
            color: Colors.white, // Cor do retângulo
            borderRadius: BorderRadius.circular(20), // Bordas arredondadas
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Sombra
                blurRadius: 10, // Desfoque da sombra
                offset: const Offset(0, 5), // Posição da sombra
              ),
            ],
          ),
        ),
      ),
    );
  }
}
