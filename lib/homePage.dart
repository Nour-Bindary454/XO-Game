import 'package:flutter/material.dart';
import 'package:xogame/board.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> Win = ['O', 'X', 'X', 'O', 'X', 'O', 'X', 'O', 'O'];
  String winner = 'X';
  bool iswiner = false;

  // Widget color = Text(
  //   'X',
  //   style: TextStyle(
  //     fontSize: 40,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.black,
  //     fontFamily: 'Pacifico',
  //     shadows: [],
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/e0f4f3f7de71f1a124086a4cb91514eb.jpg'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Text(
              'TIC',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TAC    ',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 239, 114, 166),
                      fontFamily: 'Pacifico'),
                ),
                Text(
                  'TOE',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 127, 174, 211),
                      fontFamily: 'Pacifico'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 50,
              ),
              width: 280,
              height: 350,
              child: GridView.count(
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                crossAxisCount: 3,
                children: List.generate(9, (index) {
                  void colorX() {
                    if (Win[index] == 'X') {
                      iswiner = true;
                    } else {
                      iswiner = false;
                    }
                  }

                  colorX();

                  return Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Color.fromARGB(255, 234, 125, 161)),
                    ),
                    Center(
                        child: Text(
                      Win[index],
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: iswiner ? Colors.white : Colors.black,
                        shadows: iswiner
                            ? [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.white,
                                  offset: Offset(0, 0),
                                ),
                                Shadow(
                                  blurRadius: 20.0,
                                  color: Colors.cyanAccent,
                                  offset: Offset(0, 0),
                                ),
                                Shadow(
                                  blurRadius: 30.0,
                                  color: Colors.pink,
                                  offset: Offset(0, 0),
                                ),
                              ]
                            : [],
                        fontFamily: 'Pacifico',
                      ),
                    ))
                  ]);
                }),
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return board();
                  }));
                },
                child: Image.asset(
                  'assets/images/play.png',
                  width: 190,
                ))
          ],
        ),
      ),
    );
  }
}
