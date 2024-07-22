import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/advanced_inherited/advance_inherited.dart';
import 'package:flutter_use_case_app/advanced_inherited/model/inherited_user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Use Case',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: AdvancedInheritedProvider(
          user: InheritedSampleUser(userName: 'Arican'),
        ));
  }
}
