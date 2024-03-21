import 'package:flutter/material.dart';
import 'package:kuis_praktikummobile/data_buku.dart';
import 'package:kuis_praktikummobile/detail_buku.dart';

class ListBuku extends StatelessWidget {
  const ListBuku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Buku'),
      ),
      body: ListView.builder(
        itemCount: listBuku.length,
        itemBuilder: (context, index){
          final DataBuku buku = listBuku[index];
          return ListTile(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => DetailBuku(buku : buku))
              );
            },
            leading: Image.network(
              buku.imageLink,
              width: 150,
              fit: BoxFit.cover,
            ),
            title: Text(buku.author + buku.language + buku.country,
              style: const TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20),
            ),
            subtitle: Text(buku.openTime + buku.openDays),
          );
        },
      ),
    );
  }
}