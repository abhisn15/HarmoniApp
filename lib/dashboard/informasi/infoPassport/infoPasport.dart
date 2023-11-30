import 'package:SmartHajj/dashboard/informasi/infoPassport/ArtikelPasportScreen.dart';
import 'package:flutter/material.dart';

class InfoPasport extends StatefulWidget {
  const InfoPasport({Key? key}) : super(key: key);

  @override
  _InfoPasportState createState() => _InfoPasportState();
}

class _InfoPasportState extends State<InfoPasport> {
  final List<Map<String, dynamic>> listArtikel = [
    {
      'id': 1,
      'penulis': 'Abhi Surya Nugroho',
      'profile': 'assets/profile/profile.png',
      'category': 'Passport Umroh',
      'img': 'assets/home/informasi/pasportUmroh.jpeg',
      'judul-artikel':
          'Wadidawww Sekarang ada yang Menarik di Passport Umroh!!',
      'waktu': '1 Menit Yang Lalu',
      'tanggal-pembuatan': 'Des 01, 2023'
    },
    {
      'id': 2,
      'penulis': 'Ilham Rafi',
      'profile': 'assets/profile/profile.png',
      'category': 'Passport Haji',
      'img': 'assets/home/informasi/pasportUmroh.jpeg',
      'judul-artikel': 'Alamak Promo Berkah Ramadhan paket Haji Rekk!!',
      'waktu': '1 Menit Yang Lalu',
      'tanggal-pembuatan': 'Des 02, 2023'
    },
    {
      'id': 3,
      'penulis': 'Abhi Surya Nugroho',
      'profile': 'assets/profile/profile.png',
      'category': 'Passport Umroh',
      'img': 'assets/home/informasi/pasportUmroh.jpeg',
      'judul-artikel':
          'Wadidawww Sekarang ada yang Menarik di Passport Umroh!!',
      'waktu': '1 Menit Yang Lalu',
      'tanggal-pembuatan': 'Des 03, 2023'
    },
    {
      'id': 4,
      'penulis': 'Ilham Rafi',
      'profile': 'assets/profile/profile.png',
      'category': 'Passport Haji',
      'img': 'assets/home/informasi/pasportUmroh.jpeg',
      'judul-artikel': 'Alamak Promo Berkah Ramadhan paket Haji Rekk!!',
      'waktu': '1 Menit Yang Lalu',
      'tanggal-pembuatan': 'Des 04, 2023'
    },
  ];

  final primaryColor = Color.fromRGBO(43, 69, 112, 1);
  final defaultColor = Colors.white;
  final abu = Color.fromRGBO(141, 148, 168, 1);
  final sedikitAbu = Color.fromRGBO(244, 244, 244, 1);
  final krems = Color.fromRGBO(238, 226, 223, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 69, 112, 1),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Info Pasport",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: listArtikel.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArtikelPasportScreen(
                      artikelId: listArtikel[index]['id'],
                      listArtikel: listArtikel,
                    ),
                  ),
                );
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        listArtikel[index]['img'],
                        height: 180,
                        width: 140 * 1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 140,
                          child: Text(
                            listArtikel[index]['category'],
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 180,
                          child: Text(
                            listArtikel[index]['judul-artikel'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 140,
                          child: Text(
                            listArtikel[index]['waktu'],
                            style: TextStyle(
                              color: abu,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: defaultColor,
                minimumSize: Size(double.infinity, 200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                elevation: 0,
              ),
            ),
          );
        },
      ),
    );
  }
}