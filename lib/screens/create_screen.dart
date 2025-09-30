import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/foundation/key.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key}); //sesuaikan key nya

  final int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("nama"),
              TextField(),
              SizedBox(height: 20),
              Text("Tipe Transaksi"),
              ListTile(
                title: Text("pemasukan"),
                leading: Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {},
                ),
              ),
              ListTile(
                title: Text("pengeluaran"),
                leading: Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 20),
              Text("total"),
              TextField(),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("simpan")),
            ],
          ),
        ),
      ),
    );
  }
}
