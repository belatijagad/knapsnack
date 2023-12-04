import 'package:flutter/material.dart';

import 'package:knapsnack/screens/home.dart';
import 'package:knapsnack/screens/loading.dart';
import 'package:knapsnack/screens/add_food.dart';
import 'package:knapsnack/screens/food_list.dart';
// import 'package:knapsnack/screens/individual_food.dart';
import 'package:knapsnack/screens/login.dart';
import 'package:knapsnack/screens/register.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '': (context) => Loading(),
        '/home': (context) => Home(),
        '/add_food': (context) => AddFoodScreen(),
        '/food_list': (context) => FoodList(),
        // '/individual_food': (context) => IndividualFood(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
      },
    ));
