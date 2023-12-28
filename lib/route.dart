import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce/screens/details/details_screens.dart';
import 'package:e_commerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce/screens/home/home_screens.dart';
import 'package:e_commerce/screens/login_succes/login_sucess_screen.dart';
import 'package:e_commerce/screens/opt/opt_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:e_commerce/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce/screens/sing_in/sing_in_screens.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  Signin.routeName: (context) => const Signin(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSucessScrenn.routeName: (context) => const LoginSucessScrenn(),
  SignUpScreen.routeNAme: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OptScreen.routeName: (context) => const OptScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreens.routeName: (context) => const DetailsScreens(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
