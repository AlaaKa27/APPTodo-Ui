import 'package:flutter/material.dart';

class ChooseColors {
  static Color backgroundcokor = Color(0xff121212);
  static Color whtiteColor = Colors.white;
  static Color elevtedbuttoncolor = Color(0xff8875FF);
  static Color transportcolor = Colors.transparent;
  static Color elevtedcolor = Color(0xff8687E7);
  static Color filledtextfiled = Color(0xff1D1D1D);
  static Color hinttextfiled = Color(0xff535353);
  static Color bordersidebutton = Color(0xff8875FF);
  static Color navbarBackgroundColor = Color(0xff363636);
  static Color choosefordate = Color(0xff8687E7);
  static Color daytextColor = Color(0xff272727);
  static Color containergreyColor = Color(0xff4C4C4C);
}

List<String> buttontext = [
  'Login',
  'Create account',
];

List<String> textbutton = [
  'Login with Google',
  'Login with Appel',
];

List<String> textfailed = [
  'UserName',
  'Password',
];

List<String> textRegister = [
  'UserName',
  'PassWord',
  'Confirm Password',
];

List<String> RegisterButtom = [
  'Register with Google',
  'Register with Appel',
];

final List<String> imagesPath = [
  'assets/icons/timer.png',
  'assets/icons/tag.png',
  'assets/icons/flag.png',
];

final List<Map<String, dynamic>> tasks = [
  {
    'title': 'Do Math Homework',
    'time': 'Today At 16:45',
    'location': 'Home',
    'taype': {
      'name': 'unvirste',
      'color': Colors.red,
      'icon': Icons.book_outlined,
    },
    'flags': 1,
    'isSelected': false,
  },
  {
    'title': 'Tack out dogs',
    'time': 'Today At 18:20',
    'location': 'Home',
    'taype': {
      'name': 'home',
      'color': Colors.blue,
      'icon': Icons.home_outlined,
    },
    'flags': 2,
    'isSelected': false,
  },
  {
    'title': 'Business meeting with CEO',
    'time': 'Today At 8:15',
    'location': 'Home',
    'taype': {
      'name': 'work',
      'color': Colors.blue,
      'icon': Icons.work_history_outlined,
    },
    'flags': 3,
    'isSelected': false,
  },
];
