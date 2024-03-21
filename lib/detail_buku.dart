import 'package:flutter/material.dart';
import 'package:kuis_praktikummobile/data_buku.dart';

class DetailBuku extends StatefulWidget {
  final DataBuku buku;
  const DetailBuku({Key? key, required this.buku}) : super(key: key);

  @override
  State<DetailBuku> createState() => _DetailBukuState();
}

class _DetailBukuState extends State<DetailBuku> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.buku.author + widget.buku.country + widget.buku.language),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Image.network(widget.buku.imageLink),
                  itemCount: 3,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(widget.buku.author + widget.buku.country + widget.buku.language,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('Penulis      : ' + widget.buku.author),
                    Text('Bahasa      : ' + widget.buku.language),
                    Text('Negara   : ' + widget.buku.country),
                    Text('Jumlah Halaman   : '),
                    Text('Tahun Terbit   : '),

                    // status = setState(() { (widget.buku.available) ? 'Tersedia' : 'Tidak Tersedia';
                    //   });
                    Text('Status     : '), //_statusBuku(context),

                    ElevatedButton(
                      onPressed: (){

                      },
                      child: const Text('Pesan'),
                    ),
                    const Text('Things Fall Apart'),
                    Text(widget.buku.author,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }

  Widget _statusBuku(BuildContext context){
    if(widget.buku.isAvailable){
      setState(() {
        var status = 'Tersedia';
      });
    }
    else{
      setState(() {
        var status = 'Tidak Tersedia';
      });
    }
    return Text( 'status',
      style: TextStyle(color: (widget.buku.isAvailable) ? Colors.green : Colors.red),
    );
  }
}