import 'package:flutter/material.dart';
import 'package:junga_bahadur_app/story_board.dart';

void main() {
  runApp(MaterialApp(home: SafeArea(child: MyApp())));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StoryBoard storyBoard = StoryBoard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        centerTitle: true,
        title: Text(
          "JUNGEY KO JIWAN",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(storyBoard.getBackgroundImage()),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.green[300],
              child: Text(
                storyBoard.getTitle(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 40,
                    primary: Colors.cyan[900],
                  ),
                  onPressed: () {
                    setState(() {
                      storyBoard.logicChoice1();
                      //   if (storyBoard.answerCheck[stepChecker].choice1) {
                      //     stepChecker++;
                      //   } else {
                      //     stepChecker = 0;
                      //   }
                    });
                  },
                  child: Text(storyBoard.getChoice1()),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 40,
                    primary: Colors.cyan[900],
                  ),
                  onPressed: () {
                    setState(() {
                      storyBoard.logicChoice2();
                      // if (storyBoard.answerCheck[stepChecker].choice2) {
                      //   stepChecker++;
                      // } else {
                      //   stepChecker = 0;
                      // }
                    });
                  },
                  child: Text(storyBoard.getChoice2()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
