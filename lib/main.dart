import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const NetflixHome(),
    );
  }
}

class NetflixHome extends StatelessWidget {
  const NetflixHome({super.key});

  // Listas de imagens por categoria
  final List<String> populares = const [
    'assets/imagens/O1.webp',
    'assets/imagens/O2.webp',
    'assets/imagens/O3.webp',
    'assets/imagens/O4.webp',
  ];

  final List<String> minhaLista = const [
    'assets/imagens/O5.webp',
    'assets/imagens/O6.webp',
    'assets/imagens/O7.webp',
    'assets/imagens/O8.webp',
  ];

  final List<String> seriesRecomendadas = const [
    'assets/imagens/O9.webp',
    'assets/imagens/O10.webp',
    'assets/imagens/O14.webp',
    'assets/imagens/O12.jpg',
  ];

  // Função para criar listas horizontais de imagens
  Widget buildMovieList(String title, List<String> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "Netflix",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          // Banner principal com imagem em destaque
          Container(
            height: 250,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/imagens/destaque.webp'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Filme em Destaque",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // Listas horizontais por categoria
          buildMovieList("Populares na Netflix", populares),
          buildMovieList("Minha Lista", minhaLista),
          buildMovieList("Séries Recomendadas", seriesRecomendadas),
        ],
      ),
    );
  }
}
