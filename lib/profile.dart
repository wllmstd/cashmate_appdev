import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.PNG'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Juliana Nepales', CupertinoIcons.person),
            const SizedBox(height: 20),
            itemProfile('Phone', '09286251319', CupertinoIcons.phone),
            const SizedBox(height: 20),
            itemProfile('Address', 'Jaro, Iloilo City', CupertinoIcons.location),
            const SizedBox(height: 20),
            itemProfile('Email', 'juliananepales@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  primary: Colors.indigo,
                ),
                child: const Text('Edit Profile', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.indigoAccent)),
        leading: Icon(iconData, color: Colors.orangeAccent),
        trailing: Icon(Icons.arrow_forward, color: Colors.orangeAccent),
        tileColor: Color.fromARGB(198, 211, 227, 255),
      ),
    );
  }
}
