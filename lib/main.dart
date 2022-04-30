import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const org());
}

class org extends StatefulWidget {
  const org({Key? key}) : super(key: key);

  @override
  State<org> createState() => _orgState();
}

class _orgState extends State<org> {
  late int voisNumber;

  void playsound(String number) async {
    final AudioCache player =  AudioCache();
    String alarmAudioPath = "key$number.mp3";
     player.play(alarmAudioPath);
     print("key$number.mp3");


  }

  Widget click({required Color color, required String voisNumber}) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          playsound(voisNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              click(color: Colors.red, voisNumber: "01"),
              click(color: Colors.deepOrange, voisNumber: "02"),
              click(color: Colors.orange, voisNumber: "03"),
              click(color: Colors.yellowAccent, voisNumber: "04"),
              click(color: Colors.green, voisNumber: "05"),
              click(color: Colors.lightGreen, voisNumber: "06"),
              click(color: Colors.lightBlueAccent, voisNumber: "07"),
              click(color: Colors.blue, voisNumber: "08"),
              click(color: Colors.indigo, voisNumber: "09"),
              click(color: Colors.deepPurple, voisNumber: "10"),
            ],
          ),
        ),
      ),
    );
  }
}
