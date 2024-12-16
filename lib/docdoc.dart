import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocDocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(370, 812),
      minTextAdapt: true,
      child: MaterialApp(
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: appRouter.generateRoute,
        title: ' D o c D o c ',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManger.mainblue,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
