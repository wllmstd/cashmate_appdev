import 'package:flutter/material.dart';

class ConversionScreen extends StatelessWidget {
  const ConversionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Conversion', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            // Top Section - From Currency
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'From Currency (Peso)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      // Peso Logo
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.indigo, // Added color
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/peso.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Number Box
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20), // Adjusted padding
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text('1000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Bottom Section - To Currency
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'To Currency (Dollar)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      // Dollar Logo
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white, // Added color
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/dollar.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Number Box
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20), // Adjusted padding
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text('18.03', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Convert Button with space
            SizedBox(height: 50), // Added space
            ElevatedButton(
              onPressed: () {
                // Add your conversion logic here
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjusted padding
                child: Text('Convert', style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
