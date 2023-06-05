// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Homework(),
//     );
//   }
// }
//
// class Homework extends StatefulWidget {
//   @override
//   HomeworkState createState() => HomeworkState();
// }
//
// class HomeworkState extends State<Homework> {
//   String myText = "Meni o`zgartir!" ;
//
//   void changeText() {
//     setState(() {
//       myText = "Men o`zgardim!";
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Homework"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Pastdagi matnni tugmachani bosish orqali o`zgartiring!",
//             style: TextStyle(fontSize: 25,
//                 fontWeight: FontWeight.bold),
//           ),
//           Text(
//             myText,
//             style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w500,
//           ),),
//           ElevatedButton(
//               onPressed: changeText,
//               child: Text("CLICK!")
//           ),
//         ],
//       ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homework(),
    );
  }
}

class Homework extends StatefulWidget {
  @override
  HomeworkState createState() => HomeworkState();
}

class HomeworkState extends State<Homework> {
  String myText = "Meni o`zgartir!";
  int counter = 0;

  void changeText() {
    setState(() {
      counter++;
      myText = "Men o`zgardim $counter";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Homework $counter"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pastdagi matnni tugmachani bosish orqali o`zgartiring! $counter",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                myText,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              ElevatedButton(
                onPressed: changeText,
                child: const Text("CLICK"),
              ),
              const Text('Qani')
            ],
          ),
        ));
  }
}
