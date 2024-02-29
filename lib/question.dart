import 'package:flutter/material.dart';
import 'package:quiz_app/storeque.dart';

class que extends StatefulWidget {
  const que({super.key});

  @override
  State<que> createState() => _queState();
}

class _queState extends State<que> {
  List question = [
    Quiz(ques: "Cat is an animal", ans: true),
    Quiz(ques: "Panaji is the capital of Assam", ans: false),
    Quiz(ques: "Spider have eight legs", ans: true),
    Quiz(ques: "Car have 4 wheels", ans: true),
    Quiz(ques: "India has 35 states", ans: false),
    Quiz(ques: "125 is greater than 200", ans: true),
    Quiz(ques: "India is the largest country in the world", ans: false),
    Quiz(ques: "Keerthana is a student", ans: false),
    Quiz(ques: "Lakshmi is a comedian", ans: false),
    Quiz(ques: "Parrot is an animal", ans: false),
  ];
  int q = 0;
  String result="Correct answer";
  void nextQus() {
    setState(() {
      if (q < question.length) {
        q++;
      }
    });
  }

  void check(bool answer) {
    if(answer==question[q].ques) {
      print(true);
      result = 'true';
    }
    else
      {
        print(false);
        result='false';
      }
    // print(answer);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              question[q].ques,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                        check(true);
                        nextQus();
                      });
                    },
                    child: Text('True'))),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                        check(false);
                        nextQus();
                      });
                    },
                    child: Text('False'))),
          ],
        ),
      ),
    );
  }
}
