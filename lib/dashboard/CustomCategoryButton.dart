import 'package:flutter/material.dart';

class CustomCategoryButton extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;

  CustomCategoryButton({
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      margin: const EdgeInsets.only(left: 0, top: 20.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              width: 46,
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.all(5.5),
              child: Container(
                width: 52.0,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 10.5,
                    color: Color(0xFF2B4570),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
