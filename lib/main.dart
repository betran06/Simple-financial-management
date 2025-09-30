import 'package:flutter/material.dart';
// import 'package:kelola_keuangan/db/database_instance.dart';
import 'package:kelola_keuangan/screens/create_screen.dart';
import 'package:kelola_keuangan/screens/update_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "kelola duitku", home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // DatabaseInstance? databaseInstance;
  showAretDialog(BuildContext context) {
    Widget okButton = TextButton(child: Text("yakin"), onPressed: () {});

    AlertDialog alertDialog = AlertDialog(
      title: Text("peringatan !"),
      content: Text("Anda yakin akan menghapus ?"),
      actions: [okButton],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home kelola duitku"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => CreateScreen()));
            },
            icon: Icon(Icons.add),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("Total pemasukan : Rp. 1000"),
            SizedBox(height: 20),
            Text("Total pengeluaran : Rp.500"),
            ListTile(
              title: Text("makan siang"),
              subtitle: Text("Rp.200"),
              leading: Icon(Icons.download, color: Colors.green),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UpdateScreen()),
                      );
                    },
                    icon: Icon(Icons.edit, color: Colors.grey),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      showAretDialog(context);
                    },
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),  
            ),
          ],
        ),
      ),
    );
  }
}
