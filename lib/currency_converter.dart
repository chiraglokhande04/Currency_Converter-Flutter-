import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState extends State<StatefulWidget> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) / 85.19;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              '${result.toStringAsFixed(2)} dollars',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
              onPressed: convert,
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
