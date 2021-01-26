import 'package:flutter/material.dart';

ThemeData getAppTheme(BuildContext context) => ThemeData(
      fontFamily: "Montserrat",
      primarySwatch: Colors.cyan,
      accentColor: Colors.amberAccent,
      textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            button: TextStyle(color: Colors.white),
          ),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      buttonTheme: ButtonThemeData(
          buttonColor: ThemeData.light().primaryColor,
          textTheme: ButtonTextTheme.accent,
          colorScheme:
              Theme.of(context).colorScheme.copyWith(secondary: Colors.white)),
    );
