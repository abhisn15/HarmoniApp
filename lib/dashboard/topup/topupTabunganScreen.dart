import 'package:SmartHajj/dashboard/checkoutScreen.dart';
import 'package:SmartHajj/jamaah/dompetALL.dart';
import 'package:flutter/material.dart';

class TopupTabunganScreen extends StatefulWidget {
  const TopupTabunganScreen({Key? key}) : super(key: key);

  @override
  _TopupTabunganScreenState createState() => _TopupTabunganScreenState();
}

class _TopupTabunganScreenState extends State<TopupTabunganScreen> {
  final primaryColor = Color.fromRGBO(43, 69, 112, 1);
  final defaultColor = Colors.white;
  final sedikitAbu = Color.fromRGBO(244, 244, 244, 1);
  final List<String> items = [
    'Virtual Account\nBCA 8923******',
    'Mastercard\n8923******',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 69, 112, 1),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Topup Tabungan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Kuatkan tekad, pasang niat, bismillah",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
        leading: const BackButton(
          color: Colors.white, // <-- SEE HERE
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 140,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                  child: Text(
                "SILAHKAN TRANSFER KE REKENING BERIKUT",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              )),
            ),
            Container(
              height: 300,
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: primaryColor),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Nomor Virtual Account Anda",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "9887146700043563",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "a.n  HARMONI - PAPA KHAN",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "COPY",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(
                            double.infinity,
                            30)), // Mengganti maximumSize ke minimumSize
                        backgroundColor:
                            MaterialStateProperty.all(defaultColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                        // Sesuaikan properti lain sesuai kebutuhan
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            child: Text(
                          "Lakukan Pembayaran",
                          style: TextStyle(
                              color: defaultColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        )),
                        Container(
                            child: Text(
                          "Topup Tabungan",
                          style: TextStyle(
                              color: defaultColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Column(
                children: [
                  Text(
                    "PANDUAN PEMBAYARAN",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          "PEMBAYARAN VIA MOBILE BANKING",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          "PEMBAYARAN VIA ATM",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          "PEMBAYARAN VIA INDOMART/ALFAMART",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, bottom: 20),
                    child: Text(
                      "Pilih Kartu",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color.fromRGBO(141, 148, 168, 1),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Image.asset("assets/home/topup.png"),
                  ),
                  DropdownButton<String>(
                    hint: Text(
                      'Select an option',
                      style: TextStyle(
                        fontSize: 14,
                        color: defaultColor,
                      ),
                    ),
                    dropdownColor: abu,
                    icon: Container(
                        margin: EdgeInsets.only(left: 120 * 1),
                        child: Image.asset("assets/home/dropdown_down.png")),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Row(
                                children: [
                                  Text(
                                    item,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: selectedValue == Text(item)
                                            ? Colors.white
                                            : Colors.white),
                                  ),
                                  SizedBox(
                                      width:
                                          10), // Beri jarak antara gambar dan teks
                                ],
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DompetALL(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  minimumSize: Size(400, 50),
                ),
                child: Text(
                  'BAYAR TOP UP TABUNGAN',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
