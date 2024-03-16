import 'package:flutter/material.dart';

import 'blog_colors.dart';

class BlogTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      //  brightness: Brightness.light
    ),
    scaffoldBackgroundColor: BlogColors.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: BlogColors.scaffoldBackgroundColor,
    ),
  );

  // static final darkTheme = ThemeData();
}
