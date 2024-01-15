import 'package:flutter/material.dart';
import 'package:vanilla_traceability/presentation/bottom_navigation_screen.dart';
import 'package:vanilla_traceability/presentation/home_screen/home_screen.dart';
import 'package:vanilla_traceability/presentation/messaging_screen/message_screen.dart';
import 'package:vanilla_traceability/presentation/my_orders_screen/detail_shipping_screen.dart';
import 'package:vanilla_traceability/presentation/profile_screen/profile_screen.dart';
import 'package:vanilla_traceability/presentation/splash_screen/splash_screen.dart';
import 'package:vanilla_traceability/presentation/introduction_screen/introduction_screen.dart';
import 'package:vanilla_traceability/presentation/login_screen/login_screen.dart';
import 'package:vanilla_traceability/presentation/add_order_screen/add_order_screen.dart';
import 'package:vanilla_traceability/presentation/my_orders_screen/my_orders_screen.dart';

class AppRoutes {
  static const String bottomNavigationScreen = '/bottom_navigation_screen';

  static const String homeScreen = '/home_screen';

  static const String splashScreen = '/splash_screen';

  static const String introductionScreen = '/introduction_screen';

  static const String loginScreen = '/login_screen';

  static const String addOrderScreen = '/add_order_screen';

  static const String myOrdersScreen = '/my_order_screen';

  static const String detailsMyOrdersScreen = '/details_my_order_screen';

  static const String messagingScreen = '/messaging_screen';

  static const String profileScreen = '/profile_screen';


  static Map<String, WidgetBuilder> routes = {
    bottomNavigationScreen: (context) => BottomNavigationScreen(),
    homeScreen: (context) => HomeScreen(),
    splashScreen: (context) => SplashScreen(),
    introductionScreen: (context) => IntroductionScreen(),
    loginScreen: (context) => LoginScreen(),
    addOrderScreen: (context) => AddOrderScreen(),
    myOrdersScreen: (context) => MyOrdersScreen(),
    detailsMyOrdersScreen: (context) => DetailShippingScreen(),
    messagingScreen: (context) => MessagingScreen(),
    profileScreen: (context) => ProfileScreen(),
  };
}
