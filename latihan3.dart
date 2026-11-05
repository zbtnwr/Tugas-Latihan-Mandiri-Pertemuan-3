
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// HALAMAN AWAL
class HalamanAwal extends StatelessWidget {
  const HalamanAwal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Awal'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/tujuan',
              arguments: 'Halo dari Halaman Awal',
            );
          },
          child: const Text('Kirim Pesan'),
        ),
      ),
    );
  }
}

// HALAMAN TUJUAN
class HalamanTujuan extends StatelessWidget {
  const HalamanTujuan({super.key});

  @override
  Widget build(BuildContext context) {
    final pesan = ModalRoute.of(context)!
        .settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Tujuan'),
      ),
      body: Center(
        child: Text(
          pesan,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// HALAMAN KETIGA
class HalamanKetiga extends StatelessWidget {
  const HalamanKetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Ketiga'),
      ),
      body: const Center(
        child: Text(
          'Ini adalah Halaman Ketiga',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// APLIKASI UTAMA
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HalamanAwal(),
        '/tujuan': (context) => const HalamanTujuan(),
        '/ketiga': (context) => const HalamanKetiga(),
      },
    );
  }
}
