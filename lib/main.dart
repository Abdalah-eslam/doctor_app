import 'package:doc_app/core/di/get_it.dart';
import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/docdoc.dart';
import 'package:flutter/material.dart';

void main() {
  setupInjection();
  runApp(DocDocApp(
    appRouter: AppRouter(),
  ));
}
