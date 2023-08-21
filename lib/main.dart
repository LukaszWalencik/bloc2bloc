import 'package:bloc2bloc/blocs/color/color_bloc.dart';
import 'package:bloc2bloc/blocs/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ColorBloc(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bloc 2 Bloc',
          home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Change color',
                  style: TextStyle(fontSize: 24),
                )),
            const SizedBox(height: 30),
            const Text(
              '0',
              style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Increment counter',
                  style: TextStyle(fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
