import 'package:flutter/material.dart';

//void main() {
//  runApp(const MyApp());
//}

void main() {
runApp(MaterialApp(title: 'Navigation Basics',
    home: FirstRoute() ));
}
class MyApp extends StatelessWidget {
	const MyApp();
	Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
	body: Center(
	child: Text("Flutter t1 applications!",
     style: TextStyle(color: Color.fromARGB(200, 30, 120, 45)),),
	),
    ),
  );
}
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(
              context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}