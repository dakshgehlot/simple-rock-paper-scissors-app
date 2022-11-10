import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Let\'s Play!',
        style: TextStyle(color: Colors.black)
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('A GAME OF\nROCK, PAPER AND SCISSORS.',
                    style: TextStyle(
                      fontFamily: 'OoohBaby',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50),
                Image.asset('assets/rock.png', scale: 15),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('assets/paper.png', scale: 5),
                   const SizedBox(width: 50),
                   Image.asset('assets/scissors.png', scale: 25)
                 ],
                ),
                const SizedBox(height: 50),
                ElevatedButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/game');
                },
                    label: const Text('Start',
                    style: TextStyle(
                      color: Colors.black
                    )),
                  icon: const Icon(Icons.play_arrow_outlined,
                    color: Colors.black),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  )
                ),
                ],
            ),
          ),
        ),
      ),

    );
  }
}

