import 'package:flutter/material.dart';

void main() {
  runApp(MyNinjaIDApp());
}

class MyNinjaIDApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: NinjaIDScreen(),
    );
  }
}

class NinjaIDScreen extends StatefulWidget {
  @override
  State<NinjaIDScreen> createState() => _NinjaIDScreenState();
}

class _NinjaIDScreenState extends State<NinjaIDScreen> {

  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'My Ninja ID',
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          color: Colors.grey[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Profile Picture
                 const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    "assets/channel-2.jpeg", // Replace with actual image URL
                  ),
                ),
                const SizedBox(height: 20),
                Divider(
                  color: Colors.grey[800],
                  thickness: 0.5,
                ),
                const SizedBox(height: 20),
                // Name Section
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Elvis-Marube',
                  style: TextStyle(
                    color: Colors.amber[600],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                  ),
                ),
                 const SizedBox(height: 20),
                // Ninja Level Section
                Text(
                  'NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
               const SizedBox(height: 5),
                Text(
                  '$ninjaLevel',
                  style: TextStyle(
                    color: Colors.amber[600],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                // Email Section
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'emarube89@gmail.com',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add, color: Colors.grey[200]),
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
      ),
    );
  }
}
