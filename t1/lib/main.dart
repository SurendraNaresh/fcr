import 'package:flutter/material.dart';

//void main() {
//  runApp(const MyApp());
//}

void main() {
runApp(MyApp());
}
	class MyApp extends StatelessWidget {
	const MyApp();
	Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
	body: Center(
	child: Text("Flutter t1 app!"),
	),
    ),
  );
}
}
