import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 108, 99, 254),
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                child: SizedBox(
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 180,
                        child: Stack(children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/Welcome.jpg'),
                              fit: BoxFit.fitWidth,
                            )),
                          ),
                        ]),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Hi Sudharssan!  Have a great day:)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                child: SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 180,
                        child: Stack(children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/quote.jpg'),
                              fit: BoxFit.fitWidth,
                            )),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
