import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final size=200.00;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: Center(
          child: SizedBox(
            width: size,
            height: size,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  http.get(Uri.parse('url/route/to/use'));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.orangeAccent; // pressed color
                      }
                      return Colors.grey; // default color
                    },
                  ),
                ),
                child: Image.asset("assets/icons/revolver.png"), // use correct path
              ),
            ),
          ),
        ),
      ),
    );
  }
}
