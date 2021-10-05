import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/colors_bloc.dart';
import 'package:latihan_bloc/blocs/blocs.dart';
import 'package:latihan_bloc/views/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Demo',
      home: BlocProvider(
        create: (context) => ColorsBloc(),
        child: const HomePage(),
      ),
    );
  }
}
