import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton(
      {Key? key, required this.iconImagePath, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 80,
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
              // color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 32,
                  spreadRadius: 4,
                )
              ]),
          child: Center(child: Image.asset(iconImagePath)),
        ),
        SizedBox(
          height: 4,
        ),
        //text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
            // color: Colors.white,
          ),
        ),
      ],
    );
  }
}
