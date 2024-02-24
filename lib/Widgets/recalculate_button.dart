// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RecalculateButton extends StatelessWidget {
  const RecalculateButton({
    Key? key,
    required this.text,
    required this.onReCalculate,
  }) : super(key: key);

  final String text;
  final void Function() onReCalculate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onReCalculate,
      child: Container(
        color: Colors.pink,
        width: MediaQuery.of(context).size.width,
        height: 74,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
