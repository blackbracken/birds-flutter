import 'package:flutter/material.dart';

SnackBar BirdsSnackBar(String text) => SnackBar(
      content: Text(text),
      duration: const Duration(milliseconds: 3000),
      behavior: SnackBarBehavior.floating,
    );
