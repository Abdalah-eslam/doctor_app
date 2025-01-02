import 'package:doc_app/bloc_observer.dart';
import 'package:doc_app/core/di/get_it.dart';
import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/docdoc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  setupInjection();
  runApp(DocDocApp(
    appRouter: AppRouter(),
  ));
}
