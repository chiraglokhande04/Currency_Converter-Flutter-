import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    double result = 0;

    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
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
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                result = double.parse(textEditingController.text * 81);
              },
              // style: const ButtonStyle(
              //   elevation: WidgetStatePropertyAll(5),
              //   backgroundColor: WidgetStatePropertyAll(Colors.black),
              //   foregroundColor: WidgetStatePropertyAll(Colors.white),
              //   minimumSize: WidgetStatePropertyAll(Size(150, 50)),
              //   textStyle: WidgetStatePropertyAll(TextStyle(
              //     fontSize: 18
              //   ))
              // ),
              style: ElevatedButton.styleFrom(
                elevation: 15,
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(150, 50),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
