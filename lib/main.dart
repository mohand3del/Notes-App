import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/bloc_observer.dart';
import 'package:notes_app/cubit/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/model/notes_model.dart';

import 'package:notes_app/view/screens/onbording_screen.dart';



void main() async {
  await Hive.initFlutter();
  Bloc.observer = BlocObserverCubit();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>('notes box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

     // designSize: const Size(450, 920),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(_,child){ return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData(


          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const OnBoardingScreen(),
      );
      }
    );
  }
}


