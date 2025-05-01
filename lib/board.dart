import 'package:flutter/material.dart';
import 'package:xogame/logic.dart';

class board extends StatefulWidget {
  const board({super.key});

  @override
  State<board> createState() => _boardState();
}

class _boardState extends State<board> {
  game g = game();
  String winner = ' ';
  String turn = 'X';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/e0f4f3f7de71f1a124086a4cb91514eb.jpg'),
                fit: BoxFit.fill,
                alignment: Alignment.center)),
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
              child: Text(g.turn,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '    X\'s Score',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('    ${g.xscore}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            shadows: [
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
                            ]))
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'O\'s Score    ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('${g.oscore}    ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            shadows: [
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
                            ]))
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 280,
              height: 320,
              child: GridView.count(
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                crossAxisCount: 3,
                children: List.generate(9, (index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromARGB(255, 234, 125, 161)),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                              if (g.defultBoard[index] == players.p3) {
                                setState(() {
                                  g.move(index);
                                  turn = g.CurrentPlayer;
                                });
                              }
                            },
                            child: Text(
                              g.defultBoard[index],
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: g.defultBoard[index] == 'X'
                                    ? Colors.white
                                    : Colors.black,
                                fontFamily: 'Pacifico',
                              ),
                            ))),
                  );
                }),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    g.getBoard();
                    g.CurrentPlayer = players.pX;
                    g.turn = 'It\'s ${g.CurrentPlayer}\'s turn';
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Color.fromARGB(255, 234, 125, 161),
                ),
                label: Center(
                    child: Text(
                  'Replay',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )),
                icon: Icon(Icons.replay, color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: Text(
                  '${g.winner}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      shadows: [
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
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
