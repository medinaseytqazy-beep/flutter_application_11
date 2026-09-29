import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterWidget(),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 132, 200),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 217, 81, 212),
        centerTitle: true,
        title: Text(
          'Counter',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tap "-" to decrement',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),

            SizedBox(height: 5),

            Container(
              height: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // MINUS
                  InkWell(
                    onTap: () {
                      setState(() {
                        _count--;
                      });
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      alignment: Alignment.center,
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ),

                  // NUMBER
                  Container(
                    width: 30,
                    alignment: Alignment.center,
                    child: Text(
                      '$_count',
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    ),
                  ),

                  // PLUS
                  InkWell(
                    onTap: () {
                      setState(() {
                        _count++;
                      });
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      alignment: Alignment.center,
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5),

            Text(
              'Tap "+" to increment',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
