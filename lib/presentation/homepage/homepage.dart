import 'package:flutter/material.dart';
import 'package:noughts_and_crosses/global/refactors/show_snackbar.dart';
import 'package:noughts_and_crosses/presentation/homepage/widgets/build_board.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const backgroundcolor = Colors.black;
  static const textcolor = Colors.white;

  GlobalKey glob = GlobalKey<NavigatorState>();

  int playerXscore = 0;
  int player0score = 0;
  bool oTurn = true;
  int boxFilled = 0;

  List<String> displayelement = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: const Text(
          'Hi....',
          style: TextStyle(color: textcolor),
        ),
        backgroundColor: backgroundcolor,
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.more_vert,
              color: textcolor,
            ),
          ),
        ],
      ),
      body: SizedBox(
        child: Column(
          children: [
            //BOARD tile gridview

            const Expanded(
              flex: 2,
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BuildBoard(),
                ),
              ),
            ),

            Expanded(
                child: SizedBox(
              // score board
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        playerPointBoard(
                            playername: 'Player O', playerPoint: player0score),
                        playerPointBoard(
                            playername: 'Player X', playerPoint: playerXscore)
                      ],
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.grey.shade900)),
                        onPressed: () {
                          setState(() {
                            clear();
                          });
                        },
                        child: const Text(
                          'Clear',
                          style: TextStyle(color: textcolor),
                        ))
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void tapping(int index) {
    if (displayelement[index].isEmpty) {
      oTurn == true ? displayelement[index] = 'O' : displayelement[index] = 'X';
      boxFilled++;
      oTurn = !oTurn;
      winnerCheck();
    } else {
      null;
    }
  }

  void clear() {
    for (var i = 0; i < 9; i++) {
      displayelement[i] = '';
      oTurn = true;
      boxFilled = 0;
      playerXscore = 0;
      player0score = 0;
    }
  }

  winnerCheck() {
    //checking rows
    if (displayelement[0] == displayelement[1] &&
        displayelement[0] == displayelement[2] &&
        displayelement[0] != '') {
      return winnerDialoge(oTurn);
    } else if (displayelement[3] == displayelement[4] &&
        displayelement[3] == displayelement[5] &&
        displayelement[3] != '') {
      return winnerDialoge(oTurn);
    } else if (displayelement[6] == displayelement[7] &&
        displayelement[6] == displayelement[8] &&
        displayelement[6] != '') {
      return winnerDialoge(oTurn);

      //checking column
    } else if (displayelement[0] == displayelement[3] &&
        displayelement[0] == displayelement[6] &&
        displayelement[0] != '') {
      return winnerDialoge(oTurn);
    } else if (displayelement[1] == displayelement[4] &&
        displayelement[1] == displayelement[7] &&
        displayelement[1] != '') {
      return winnerDialoge(oTurn);
    } else if (displayelement[2] == displayelement[5] &&
        displayelement[2] == displayelement[8] &&
        displayelement[2] != '') {
      return winnerDialoge(oTurn);

      //checking diagonal
    } else if (displayelement[0] == displayelement[4] &&
        displayelement[0] == displayelement[8] &&
        displayelement[0] != '') {
      return winnerDialoge(oTurn);
    } else if (displayelement[2] == displayelement[4] &&
        displayelement[2] == displayelement[6] &&
        displayelement[2] != '') {
      return winnerDialoge(oTurn);
    } else {
      if (boxFilled == 9) {
        showInSnackBar('Tie', context);
      }
    }
  }

  winnerDialoge(bool currentturn) {
    if (currentturn == false) {
      showInSnackBar('O', context);
      player0score++;
    } else {
      showInSnackBar('X', context);
      playerXscore++;
    }
  }
}

Widget playerPointBoard(
    {required String playername, required int playerPoint}) {
  return Column(
    children: [
      Text(
        playername,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      Text(
        '$playerPoint',
        style: const TextStyle(color: Colors.white, fontSize: 20),
      )
    ],
  );
}
