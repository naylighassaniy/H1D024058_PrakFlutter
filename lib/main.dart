import 'package:flutter/material.dart';
import 'package:belajarflutter/ui/produk_page.dart';
// import 'package:belajarflutter/ui/login_page.dart';
// import 'package:belajarflutter/ui/registrasi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko Kita',
      // Modul 4 - Alur Utama:
      home: ProdukPage(),
      // Atau bisa langsung membuka halaman Login / Registrasi:
      // home: LoginPage(),
      // home: RegistrasiPage(),
    );
  }
}
