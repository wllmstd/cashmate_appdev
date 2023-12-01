import 'package:flutter/material.dart';

class DetectionScreen extends StatelessWidget {
  const DetectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banknote Detection', style: TextStyle(color: Colors.white)),
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
            // Top Section - Camera Image Placeholder
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Camera Image Placeholder
                  Container(
                    width: 510,
                    height: 445,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/cash.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            // Middle Section - Detect Money
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Detect Money
                  Text(
                    'Detect Money',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                  SizedBox(height: 4), // Added space
                  // You can add camera control buttons or settings here
                ],
              ),
            ),

            // Bottom Navigation Bar using BottomAppBar
            Center(
              child: PreferredSize(
                preferredSize: Size.fromHeight(10.0), // Set the height of the BottomAppBar
                child: BottomAppBar(
                  color: Colors.transparent,
                  elevation: 0, // Set the color
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      color: Color.fromARGB(197, 209, 226, 255), // Color of the box
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.photo, color: Colors.indigo),
                            tooltip: 'Album',
                            onPressed: () {
                              // Handle album icon tap
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.camera, color: Colors.indigo),
                            tooltip: 'Camera',
                            onPressed: () {
                              // Handle camera icon tap
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.flip_camera_android, color: Colors.indigo),
                            tooltip: 'Flip Camera',
                            onPressed: () {
                              // Handle flip camera icon tap
                            },
                          ),
                        ],
                      ),
                    ),
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
