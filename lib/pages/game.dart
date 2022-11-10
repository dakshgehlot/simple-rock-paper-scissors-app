import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  String playerChoice = '-N/A-';
  String computerChoice = '-N/A-';
  String result = '-N/A-';

  void updateChoice (String pChoice){

      String tempResult = '-N/A-';

      var computerChoiceList = ['Rock', 'Paper', 'Scissors'];
      var cChoice = computerChoiceList[Random().nextInt(computerChoiceList.length)];

      if (pChoice == cChoice){
        tempResult = 'Tie !';
      }

      else if (pChoice == 'Rock'){
        if (cChoice == 'Paper'){
          tempResult = 'You lose !';
        } else {
          tempResult = 'You win !';
        }
      }

      else if (pChoice == 'Paper'){
        if (cChoice == 'Scissors'){
          tempResult = 'You lose !';
        } else {
          tempResult = 'You win !';
        }
      }

      else if (pChoice == 'Scissors'){
        if (cChoice == 'Rock'){
          tempResult = 'You lose !';
        } else {
          tempResult = 'You win !';
        }
      }

      setState((){
        playerChoice = pChoice;
        computerChoice = cChoice;
        result = tempResult;
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Start',
        style: TextStyle(
          color: Colors.black
        ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Text('Choose one :',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'OoohBaby',
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    updateChoice('Rock');
                  },
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/rock.png',
                      fit: BoxFit.cover
                      ),
                    ),
                ),
                const SizedBox(width: 25),
                GestureDetector(
                  onTap: (){
                    updateChoice('Paper');
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/paper.png',
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                GestureDetector(
                  onTap: (){
                    updateChoice('Scissors');
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/scissors.png',
                        fit: BoxFit.fill
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Text('Your choice : $playerChoice',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'OoohBaby',
                fontSize: 20
              )),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Text('Computer\'s choice : $computerChoice',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'OoohBaby',
                fontSize: 20
              )),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: SizedBox(
                child: Text(result,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OoohBaby',
                        fontSize: 30
                    )
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
