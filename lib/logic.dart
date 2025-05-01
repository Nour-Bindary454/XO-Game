class players {
  static String pX = 'X';
  static String pO = 'O';
  static String p3 = ' ';
}

class game {
  String CurrentPlayer = players.pX;
  int xscore = 0;
  int oscore = 0;
  String winner = ' ';
  String turn = ' It\'s X\'s turn';
  List<String> defultBoard = List.generate(9, (index) => players.p3);
  void getBoard() {
    defultBoard = List.generate(9, (index) => players.p3);
  }

  void move(index) {
    if (defultBoard[index] == players.p3) {
      defultBoard[index] = CurrentPlayer;
      turn = 'It\'s $CurrentPlayer\'s turn';
      if (CurrentPlayer == players.pX) {
        CurrentPlayer = players.pO;
        turn = 'It\'s $CurrentPlayer\'s turn';
      } else if (CurrentPlayer == players.pO) {
        CurrentPlayer = players.pX;
        turn = 'It\'s $CurrentPlayer\'s turn';
      }

      winner = checkWinner();
      if (winner != ' ') {
        CurrentPlayer = players.p3;
        turn = ' ';
      }
    }
  }

  String checkWinner() {
    if (defultBoard[0] == defultBoard[1] &&
        defultBoard[1] == defultBoard[2] &&
        defultBoard[0] != players.p3) {
      if (defultBoard[0] == players.pX) {
        xscore++;
      } else if (defultBoard[0] == players.pO) {
        oscore++;
      }

      return '${defultBoard[0]} IS THE WINNER';
    }
    if (defultBoard[3] == defultBoard[4] &&
        defultBoard[4] == defultBoard[5] &&
        defultBoard[3] != players.p3) {
      if (defultBoard[3] == players.pX) {
        xscore++;
      } else if (defultBoard[3] == players.pO) {
        oscore++;
      }

      return '${defultBoard[3]} IS THE WINNER';
    }
    if (defultBoard[6] == defultBoard[7] &&
        defultBoard[7] == defultBoard[8] &&
        defultBoard[6] != players.p3) {
      if (defultBoard[6] == players.pX) {
        xscore++;
      } else if (defultBoard[6] == players.pO) {
        oscore++;
      }

      return '${defultBoard[6]} IS THE WINNER';
    }

    if (defultBoard[0] == defultBoard[3] &&
        defultBoard[3] == defultBoard[6] &&
        defultBoard[0] != players.p3) {
      if (defultBoard[0] == players.pX) {
        xscore++;
      } else if (defultBoard[0] == players.pO) {
        oscore++;
      }
      return '${defultBoard[0]} IS THE WINNER';
    }
    if (defultBoard[1] == defultBoard[4] &&
        defultBoard[4] == defultBoard[7] &&
        defultBoard[1] != players.p3) {
      if (defultBoard[1] == players.pX) {
        xscore++;
      } else if (defultBoard[1] == players.pO) {
        oscore++;
      }
      return '${defultBoard[1]} IS THE WINNER';
    }
    if (defultBoard[2] == defultBoard[5] &&
        defultBoard[5] == defultBoard[8] &&
        defultBoard[2] != players.p3) {
      if (defultBoard[2] == players.pX) {
        xscore++;
      } else if (defultBoard[2] == players.pO) {
        oscore++;
      }
      return '${defultBoard[2]} IS THE WINNER';
    }

    if (defultBoard[0] == defultBoard[4] &&
        defultBoard[4] == defultBoard[8] &&
        defultBoard[0] != players.p3) {
      if (defultBoard[0] == players.pX) {
        xscore++;
      } else if (defultBoard[0] == players.pO) {
        oscore++;
      }
      return '${defultBoard[0]} IS THE WINNER';
    }
    if (defultBoard[2] == defultBoard[4] &&
        defultBoard[4] == defultBoard[6] &&
        defultBoard[2] != players.p3) {
      if (defultBoard[2] == players.pX) {
        xscore++;
      } else if (defultBoard[2] == players.pO) {
        oscore++;
      }
      return '${defultBoard[2]} IS THE WINNER';
    }

    return ' ';
  }
}
