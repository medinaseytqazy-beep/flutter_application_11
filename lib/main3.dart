import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DrinkCounter());
  }
}

class DrinkCounter extends StatefulWidget {
  @override
  _DrinkCounterState createState() => _DrinkCounterState();
}

class _DrinkCounterState extends State<DrinkCounter> {
  int cups = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 223, 147),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 240, 215, 86),
        centerTitle: true,
        title: Text(
          'Drink Counter',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            // NUMBER
            Text(
              '$cups',
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            // BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // MINUS
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (cups > 0) {
                        cups--;
                      }
                    });
                  },
                  child: Text('−', style: TextStyle(fontSize: 25)),
                ),

                SizedBox(width: 15),

                // PLUS
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cups++;
                    });
                  },
                  child: Text('+', style: TextStyle(fontSize: 25)),
                ),
              ],
            ),

            SizedBox(height: 25),

            // RESET
            TextButton(
              onPressed: () {
                setState(() {
                  cups = 0;
                });
              },
              child: Text(
                'RESET',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
