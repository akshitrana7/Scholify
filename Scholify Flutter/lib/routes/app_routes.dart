import 'package:flutter/material.dart';
import 'package:faiz_s_application/presentation/splash_screen/splash_screen.dart';
import 'package:faiz_s_application/presentation/home_screen/home_screen.dart';
import 'package:faiz_s_application/presentation/message_writing_screen/message_writing_screen.dart';
import 'package:faiz_s_application/presentation/report_screen/report_screen.dart';
import 'package:faiz_s_application/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:faiz_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homeScreen = '/home_screen';

  static const String messageWritingScreen = '/message_writing_screen';

  static const String reportScreen = '/report_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    homeScreen: (context) => HomeScreen(),
    messageWritingScreen: (context) => MessageWritingScreen(),
    reportScreen: (context) => ReportScreen(),
    chatbotScreen: (context) => ChatbotScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
