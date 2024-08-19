import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/bloc/notes/notes_bloc.dart';
import 'package:task_manager_app/bloc/notes/notes_event.dart';
import 'package:task_manager_app/bloc/search/search_bloc.dart';
import 'package:task_manager_app/bloc/search/search_event.dart';
import 'package:task_manager_app/screens/signup_screen.dart';
import 'package:task_manager_app/utils/theme_constants.dart';

void main(List<String> args) {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<NotesBloc>(
          create: (context) => NotesBloc()..add(GetAllNotesEvent()),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc()..add(SearchGetAllNotesEvent()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;
  void toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? notesTheme : ThemeData.light(),
      title: 'Task Manager App',
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}
