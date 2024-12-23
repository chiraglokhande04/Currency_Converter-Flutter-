import 'dart:ffi';

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Please Enter the Amount in INR',
                prefixIcon: Icon(Icons.currency_rupee_sharp),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white70,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
