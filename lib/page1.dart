import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'This is page one that we use just for navigation purposes.'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 190,
              left: 11,
              child: Card(
                color: Color.fromARGB(255, 253, 253, 253),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  width: 390,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(27),
                    child: Text(
                      'The Dream Car',
                      textAlign:
                          TextAlign.center, // Center the text horizontally
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: Color.fromARGB(255, 255, 7, 7),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: -7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: Image.network(
                    'https://live.staticflickr.com/65535/53633715908_e3f35020d2_z.jpg',
                    fit: BoxFit.fitWidth,
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
