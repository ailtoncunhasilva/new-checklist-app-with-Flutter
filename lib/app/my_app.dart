import 'package:check_list/app/pages/checklist_page.dart';
import 'package:check_list/app/pages/login_page.dart';
import 'package:check_list/app/shared/custom_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.mainTheme,
      home: ChecklistPage(),
    );
  }
}