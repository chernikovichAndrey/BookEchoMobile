import 'package:book_echo/app.dart';
import 'package:book_echo/core/common/repositories_container.dart';
import 'package:book_echo/domain/app_bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'assets/.env');
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AppBloc(),
        ),
      ],
      child: App(
        repos: RepositoriesContainer(),
      ),
    ),
  );
}
