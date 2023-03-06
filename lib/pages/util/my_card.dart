import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final String cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            // padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              // color: Colors.blue[200],
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("lib/icons/background.PNG"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            padding: EdgeInsets.all(28.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      'lib/icons/visa.png',
                      height: 52,
                    ),
                  ],
                ),
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                    // fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$' + balance.toString(),
                  style: GoogleFonts.barlow(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      // fontWeight: FontWeight.bold,)
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //card number
                    Text(
                      cardNumber,
                      style: GoogleFonts.barlow(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 230, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    //card expiry date
                    Text(
                      expiryMonth.toString() + '/' + expiryYear.toString(),
                      style: GoogleFonts.barlow(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 230, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
