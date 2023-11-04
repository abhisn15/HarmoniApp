import 'package:Harmoni/jamaah/dompetALL.dart';
import 'package:flutter/material.dart';

class CheckoutDP extends StatefulWidget {
  const CheckoutDP({Key? key}) : super(key: key);

  @override
  _CheckoutDPState createState() => _CheckoutDPState();
}

final primaryColor = Color.fromRGBO(43, 69, 112, 1);
final defaultColor = Colors.white;
final abu = Color.fromRGBO(141, 148, 168, 1);
final sedikitAbu = Color.fromRGBO(244, 244, 244, 1);
final krems = Color.fromRGBO(238, 226, 223, 1);

class _CheckoutDPState extends State<CheckoutDP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          title: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Checkout DP",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Kuatkan tekad, pasang niat, bismillah",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              color: defaultColor,
              child: Center(
                child: Text("SILAKAN TRANSFER KE REKENING BERIKUT"),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24),
              width: double.infinity,
              height: 390,
              color: primaryColor,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "NOMOR VIRTUAL ACCOUNT ANDA",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "9887146700043563",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "a.n  HARMONI - PAPA KHAN",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(70)),
                        color: defaultColor),
                    child: Center(
                      child: Text(
                        "COPY",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: primaryColor),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Lakukan Pembayaran Setoran Awal",
                      style: TextStyle(
                          color: defaultColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text(
                      "Senilai Rp. 1.000.000",
                      style: TextStyle(
                          color: defaultColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color.fromRGBO(141, 148, 168, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.asset("assets/home/topup.png")),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 160 * 1),
                          child: Text(
                            "Mastercard",
                            style: TextStyle(
                              color: defaultColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 160 * 1),
                          child: Text(
                            "8923******",
                            style: TextStyle(
                              color: defaultColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(child: Image.asset("assets/home/dropdown_down.png"))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DompetALL()),
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
                  'BAYAR DP',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}