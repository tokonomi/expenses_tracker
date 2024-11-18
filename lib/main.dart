import 'package:flutter/material.dart';

import 'package:expensetracker/widgets/expenses.dart';

final kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 12, 84, 123));

final kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 12, 144, 85),
  brightness: Brightness.dark,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
              color: kDarkColorScheme.secondaryContainer,
              shadowColor: kDarkColorScheme.secondaryContainer,
              margin: const EdgeInsets.only(top: 10)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kDarkColorScheme.onPrimaryContainer,
                  foregroundColor: kDarkColorScheme.onSecondary))),
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.onSecondary),
          cardTheme: const CardTheme().copyWith(
              shadowColor: kColorScheme.secondaryContainer,
              margin: const EdgeInsets.only(top: 10)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.onPrimaryFixed,
              foregroundColor: kColorScheme.onSecondary,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                color: kColorScheme.onSecondaryContainer,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ))),
      home: const Expenses(),
      themeMode: ThemeMode.system,
    ),
  );
}
