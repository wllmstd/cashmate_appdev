import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: const Color.fromARGB(198, 211, 227, 255),
      ),
      home: const SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 40), // Add space before the Language box
          buildSettingsBox(
            icon: Icons.language,
            text: 'Language',
            onTap: () {
              // Add your logic for handling Language button tap
            },
          ),
          const SizedBox(height: 16), // Add a bit of space here
          buildSettingsBox(
            icon: Icons.mic,
            text: 'Voice Settings',
            onTap: () {
              // Add your logic for handling Voice Settings button tap
            },
          ),

                    const SizedBox(height: 16), // Add a bit of space here
          buildSettingsBox(
            icon: Icons.notification_add,
            text: 'Notifications',
            onTap: () {
              // Add your logic for handling Voice Settings button tap
            },
          ),

          const SizedBox(height: 16), // Add a bit of space here
          buildSettingsBox(
            icon: Icons.help,
            text: 'Help and Support',
            onTap: () {
              // Add your logic for handling Help and Support button tap
            },
          ),
        ],
      ),
    );
  }

  Widget buildSettingsBox({required IconData icon, required String text, required VoidCallback onTap}) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0), // Vertical margin set to 0
      child: SizedBox(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.white),
              ),
              const SizedBox(width: 16),
              Text(
                text,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Set fontWeight to bold
                textAlign: TextAlign.center,
              ),
              const Expanded(child: SizedBox()), // Spacer to push the following icon to the right
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
