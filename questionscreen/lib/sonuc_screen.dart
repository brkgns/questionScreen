import 'package:flutter/material.dart';
import 'package:questionscreen/question_screen.dart';

// ignore: camel_case_types
class Sonuc_Screen extends StatelessWidget {

  const Sonuc_Screen({super.key,});


@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.jpg", width: 250),
            const Text(
              "Sonuç Ekranı",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionScreen(),
                    ));
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Yeniden Başla"),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 20)),
            ),
          ],
        ),
      ),
    );
  }
}



