import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: "poppin", color: Colors.black, fontSize: 28),
          headline3: TextStyle(fontFamily: "poppin_semibold", color: Colors.black, fontSize: 18),

        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black12),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Canva For Pakistan",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Image.asset("assets/images/cars.png")
                  ],
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Let's go", style: Theme.of(context).textTheme.headline3,),style: Theme.of(context).elevatedButtonTheme.,)
            ],
          ),
        ),
      ),
    );
  }
}
