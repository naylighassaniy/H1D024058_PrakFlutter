import 'package:flutter/material.dart';
import 'package:belajarflutter/hello_world.dart';
import 'package:belajarflutter/column_widget.dart';
import 'package:belajarflutter/row_widget.dart';
import 'package:belajarflutter/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data Produk'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Tambah Produk',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProdukForm()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu\nPemrograman Mobile',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text('Hello World'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HelloWorld()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_column),
              title: const Text('Widget Column'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ColumnWidget()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.table_rows),
              title: const Text('Widget Row'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RowWidget()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit_note),
              title: const Text('Form Produk'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProdukForm()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('List Data Produk'),
              selected: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Kulkas'),
              subtitle: Text('30000'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Playstation'),
              subtitle: Text('30000'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Radio'),
              subtitle: Text('30000'),
            ),
          ),
        ],
      ),
    );
  }
}
