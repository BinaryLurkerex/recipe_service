import 'package:flutter/material.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/core/recipe_app.dart';

void main() {
  configureDependencies();
  runApp(const RecipeApp());
}
